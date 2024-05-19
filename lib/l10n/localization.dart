import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/l10n.dart';

extension ContextExt on BuildContext {
  L10n get l10n => L10n.of(this);
}

class Localization {
  static Locale currentLocale = const Locale('uk', 'UA');

  static L10n l10n = lookupL10n(currentLocale);
}
