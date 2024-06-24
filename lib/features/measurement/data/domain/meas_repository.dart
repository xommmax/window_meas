import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:path/path.dart';
import 'package:window_meas/features/measurement/data/db/ds/meas_local_ds.dart';
import 'package:window_meas/features/measurement/data/remote/ds/meas_remote_ds.dart';
import 'package:window_meas/features/measurement/data/domain/model/measurement.dart';
import 'package:window_meas/features/measurement/data/remote/model/measurement_dto.dart';

@singleton
class MeasurementRepository {
  MeasurementRepository(this.local, this.remote);

  final MeasurementLocalDataSource local;
  final MeasurementRemoteDataSource remote;

  Future<void> addLocalMeasurement(Measurement measurement) =>
      local.addMeasurement(measurement.toDB());

  Future<void> addRemoteMeasurement(Measurement measurement, File pdfFile) async {
    final pdfFileRemotePath = await _addFileToCDN(pdfFile);
    final dto = MeasurementDTO.fromDomain(measurement, pdfFileRemotePath);

    if (measurement.remoteId == null) {
      final remoteId = await remote.addMeasurement(dto);
      await local.updateMeasurement(measurement.copyWith(remoteId: remoteId).toDB());
    } else {
      await remote.updateMeasurement(dto);
    }
  }

  Future<List<Measurement>> getLocalMeasurements() async {
    final list = await local.getMeasurements();
    return list.map((e) => Measurement.fromDB(e)).toList();
  }

  Future<Measurement?> getLocalMeasurement(String id) async {
    final db = await local.getMeasurement(id);
    return db != null ? Measurement.fromDB(db) : null;
  }

  Future<List<Measurement>> getRemoteMeasurements() async {
    final list = await remote.getMeasurements();
    return list.map((e) => e.toDomain()).toList();
  }

  Future<void> updateMeasurement(Measurement measurement) =>
      local.updateMeasurement(measurement.toDB());

  Stream<List<Measurement>> watchMeasurements() =>
      local.watchMeasurements().map((list) => list.map((e) => Measurement.fromDB(e)).toList());

  Future<void> deleteMeasurement(String measurementId) => local.deleteMeasurement(measurementId);

  Future<String> _addFileToCDN(File file) async {
    final ref = FirebaseStorage.instance.ref('measurements/pdf').child(basename(file.path));
    try {
      final url = await ref.getDownloadURL();
      return url;
    } catch (e) {
      await ref.putFile(file);
      final url = await ref.getDownloadURL();
      return url;
    }
  }
}
