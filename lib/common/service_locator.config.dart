// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:isar/isar.dart' as _i4;
import 'package:window_meas/common/register_module.dart' as _i15;
import 'package:window_meas/features/editor/bloc/drawing_cubit.dart' as _i3;
import 'package:window_meas/features/editor/bloc/editor_cubit.dart' as _i12;
import 'package:window_meas/features/meas/cubit/meas_details_cubit.dart'
    as _i14;
import 'package:window_meas/features/meas/cubit/meas_list_cubit.dart' as _i13;
import 'package:window_meas/features/meas/data/ds/meas_local_ds.dart' as _i7;
import 'package:window_meas/features/meas/data/ds/meas_remote_ds.dart' as _i6;
import 'package:window_meas/features/meas/data/meas_repo.dart' as _i10;
import 'package:window_meas/features/templates/cubit/template_list_cubit.dart'
    as _i11;
import 'package:window_meas/features/templates/data/ds/template_local_ds.dart'
    as _i8;
import 'package:window_meas/features/templates/data/ds/template_remote_ds.dart'
    as _i5;
import 'package:window_meas/features/templates/data/template_repo.dart' as _i9;

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
    gh.factory<_i3.DrawingCubit>(() => _i3.DrawingCubit());
    await gh.factoryAsync<_i4.Isar>(
      () => registerModule.isar(),
      preResolve: true,
    );
    gh.singleton<_i5.TemplateRemoteDataSource>(
        () => _i5.TemplateRemoteDataSourceImpl());
    gh.singleton<_i6.MeasurementRemoteDataSource>(
        () => _i6.MeasurementRemoteDataSourceImpl());
    gh.singleton<_i7.MeasurementLocalDataSource>(
        () => _i7.MeasurementIsarLocalDataSource(gh<_i4.Isar>()));
    gh.singleton<_i8.TemplateLocalDataSource>(
        () => _i8.TemplateIsarLocalDataSource(gh<_i4.Isar>()));
    gh.singleton<_i9.TemplateRepository>(() => _i9.TemplateRepository(
          gh<_i8.TemplateLocalDataSource>(),
          gh<_i5.TemplateRemoteDataSource>(),
        ));
    gh.singleton<_i10.MeasurementRepository>(() => _i10.MeasurementRepository(
          gh<_i7.MeasurementLocalDataSource>(),
          gh<_i6.MeasurementRemoteDataSource>(),
        ));
    gh.factory<_i11.TemplateListCubit>(
        () => _i11.TemplateListCubit(gh<_i9.TemplateRepository>()));
    gh.factory<_i12.EditorCubit>(
        () => _i12.EditorCubit(gh<_i9.TemplateRepository>()));
    gh.factory<_i13.MeasurementListCubit>(
        () => _i13.MeasurementListCubit(gh<_i10.MeasurementRepository>()));
    gh.factory<_i14.MeasurementDetailsCubit>(
        () => _i14.MeasurementDetailsCubit(gh<_i10.MeasurementRepository>()));
    return this;
  }
}

class _$RegisterModule extends _i15.RegisterModule {}
