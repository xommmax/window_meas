import 'package:isar/isar.dart';

part 'measurement_db.g.dart';

@collection
class MeasurementDB {
  @Index(unique: true)
  late String id;
  late DateTime date;
  String? clientName;
  String? address;
  Id? innerId;
}
