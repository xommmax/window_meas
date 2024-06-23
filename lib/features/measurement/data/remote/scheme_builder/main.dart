import 'package:window_meas/features/measurement/data/remote/scheme_builder/scheme_builder.dart';

Future<void> main() async {
  final schemeBuilder = SchemeBuilder();
  await schemeBuilder.initScheme();
}
