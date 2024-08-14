import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:window_meas/features/measurement/data/db/model/expander_db.dart';
import 'package:window_meas/features/measurement/data/domain/model/params/param_enum.dart';
import 'package:window_meas/l10n/localization.dart';

part 'expander.freezed.dart';

@freezed
class Expander with _$Expander {
  const Expander._();

  const factory Expander({
    required ExpanderSide side,
    required ExpanderWidth width,
    required String length,
    required DateTime createdAt,
  }) = _Expander;

  factory Expander.initial() => Expander(
        side: ExpanderSide.none,
        width: ExpanderWidth.none,
        length: '',
        createdAt: DateTime.now(),
      );

  ExpanderDB toDB() => ExpanderDB()
    ..side = side
    ..createdAt = createdAt
    ..width = width
    ..length = length;

  static Expander fromDB(ExpanderDB db) => Expander(
        side: db.side,
        createdAt: db.createdAt,
        width: db.width,
        length: db.length,
      );
}

enum ExpanderWidth implements ParamEnum {
  none,
  w20,
  w35,
  w40,
  w60,
  w100;

  @override
  String get localizedName => switch (this) {
        ExpanderWidth.none => Localization.l10n.none,
        ExpanderWidth.w20 => '20',
        ExpanderWidth.w35 => '35',
        ExpanderWidth.w40 => '40',
        ExpanderWidth.w60 => '60',
        ExpanderWidth.w100 => '100',
      };
}

enum ExpanderSide implements ParamEnum {
  none,
  left,
  right,
  top,
  bottom;

  @override
  String get localizedName => switch (this) {
        ExpanderSide.none => Localization.l10n.none,
        ExpanderSide.left => Localization.l10n.expanderLeft,
        ExpanderSide.right => Localization.l10n.expanderRight,
        ExpanderSide.top => Localization.l10n.expanderTop,
        ExpanderSide.bottom => Localization.l10n.expanderBottom,
      };
}
