import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';
import 'package:window_meas/features/measurement/data/domain/model/connector.dart';

part 'connector_db.g.dart';

@embedded
class ConnectorDB {
  @Enumerated(EnumType.name)
  @Default(ConnectorAngle.none)
  late ConnectorAngle angle;
  @Default('')
  late String description;
  late DateTime createdAt;
}
