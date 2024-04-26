import 'package:injectable/injectable.dart';

abstract class MeasurementRemoteDataSource {}

@Singleton(as: MeasurementRemoteDataSource)
class MeasurementRemoteDataSourceImpl implements MeasurementRemoteDataSource {
  MeasurementRemoteDataSourceImpl();
}
