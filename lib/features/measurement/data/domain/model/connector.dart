import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:window_meas/features/measurement/data/db/model/connector_db.dart';
import 'package:window_meas/features/measurement/data/domain/model/params/param_enum.dart';
import 'package:window_meas/l10n/localization.dart';

part 'connector.freezed.dart';

@freezed
class Connector with _$Connector {
  const Connector._();

  const factory Connector({
    required ConnectorAngle angle,
    required String description,
    required DateTime createdAt,
  }) = _Connector;

  factory Connector.initial() => Connector(
        angle: ConnectorAngle.none,
        description: '',
        createdAt: DateTime.now(),
      );

  ConnectorDB toDB() => ConnectorDB()
    ..createdAt = createdAt
    ..angle = angle
    ..description = description;

  static Connector fromDB(ConnectorDB db) => Connector(
        createdAt: db.createdAt,
        angle: db.angle,
        description: db.description,
      );
}

enum ConnectorAngle implements ParamEnum {
  none,
  d45,
  d90;

  @override
  String get localizedName => switch (this) {
        ConnectorAngle.none => Localization.l10n.none,
        ConnectorAngle.d45 => '45°',
        ConnectorAngle.d90 => '90°',
      };
}
