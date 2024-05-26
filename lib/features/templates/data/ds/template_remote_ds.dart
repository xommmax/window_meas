import 'package:injectable/injectable.dart';

abstract class TemplateRemoteDataSource {}

@Singleton(as: TemplateRemoteDataSource)
class TemplateRemoteDataSourceImpl implements TemplateRemoteDataSource {
  TemplateRemoteDataSourceImpl();
}
