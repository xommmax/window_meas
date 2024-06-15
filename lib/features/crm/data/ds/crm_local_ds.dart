import 'package:injectable/injectable.dart';

abstract class CrmLocalDataSource {}

@Singleton(as: CrmLocalDataSource)
class CrmLocalDataSourceImpl implements CrmLocalDataSource {}
