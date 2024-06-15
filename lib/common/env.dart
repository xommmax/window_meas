import 'package:envied/envied.dart';

part 'env.g.dart';

@envied
abstract class Env {
  @EnviedField(varName: 'KOMMO_CRM_TOKEN', obfuscate: true)
  static String kommoCrmToken = _Env.kommoCrmToken;

  @EnviedField(varName: 'KOMMO_CRM_SUBDOMAIN', obfuscate: true)
  static String kommoCrmSubdomain = _Env.kommoCrmSubdomain;
}
