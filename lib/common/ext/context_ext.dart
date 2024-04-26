import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/l10n.dart';

extension ContextExt on BuildContext {
  L10n get l10n => L10n.of(this);
}
