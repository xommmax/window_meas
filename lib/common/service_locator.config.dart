// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:isar/isar.dart' as _i5;
import 'package:window_meas/common/register_module.dart' as _i11;
import 'package:window_meas/features/editor/bloc/drawing_cubit.dart' as _i4;
import 'package:window_meas/features/editor/bloc/editor_cubit.dart' as _i3;
import 'package:window_meas/features/meas/cubit/meas_details_cubit.dart'
    as _i10;
import 'package:window_meas/features/meas/cubit/meas_list_cubit.dart' as _i9;
import 'package:window_meas/features/meas/data/ds/meas_local_ds.dart' as _i7;
import 'package:window_meas/features/meas/data/ds/meas_remote_ds.dart' as _i6;
import 'package:window_meas/features/meas/data/meas_repo.dart' as _i8;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.factory<_i3.EditorCubit>(() => _i3.EditorCubit());
    gh.factory<_i4.DrawingCubit>(() => _i4.DrawingCubit());
    await gh.factoryAsync<_i5.Isar>(
      () => registerModule.isar(),
      preResolve: true,
    );
    gh.singleton<_i6.MeasurementRemoteDataSource>(
        () => _i6.MeasurementRemoteDataSourceImpl());
    gh.singleton<_i7.MeasurementLocalDataSource>(
        () => _i7.MeasurementIsarLocalDataSource(gh<_i5.Isar>()));
    gh.singleton<_i8.MeasurementRepository>(() => _i8.MeasurementRepository(
          gh<_i7.MeasurementLocalDataSource>(),
          gh<_i6.MeasurementRemoteDataSource>(),
        ));
    gh.factory<_i9.MeasurementListCubit>(
        () => _i9.MeasurementListCubit(gh<_i8.MeasurementRepository>()));
    gh.factory<_i10.MeasurementDetailsCubit>(
        () => _i10.MeasurementDetailsCubit(gh<_i8.MeasurementRepository>()));
    return this;
  }
}

class _$RegisterModule extends _i11.RegisterModule {}
