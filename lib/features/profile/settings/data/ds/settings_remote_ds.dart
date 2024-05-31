import 'package:injectable/injectable.dart';

abstract class SettingsRemoteDataSource {}

@Singleton(as: SettingsRemoteDataSource)
class SettingsRemoteDataSourceImpl implements SettingsRemoteDataSource {
  SettingsRemoteDataSourceImpl();
}
