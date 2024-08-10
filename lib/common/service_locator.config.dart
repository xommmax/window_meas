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
import 'package:window_meas/common/register_module.dart' as _i20;
import 'package:window_meas/features/auth/bloc/auth_cubit.dart' as _i14;
import 'package:window_meas/features/editor/bloc/drawing_cubit.dart' as _i3;
import 'package:window_meas/features/editor/bloc/editor_cubit.dart' as _i17;
import 'package:window_meas/features/measurement/cubit/meas_details_cubit.dart'
    as _i19;
import 'package:window_meas/features/measurement/cubit/meas_list_cubit.dart'
    as _i18;
import 'package:window_meas/features/measurement/data/db/ds/meas_local_ds.dart'
    as _i8;
import 'package:window_meas/features/measurement/data/domain/meas_repository.dart'
    as _i10;
import 'package:window_meas/features/measurement/data/remote/meas_remote_ds.dart'
    as _i5;
import 'package:window_meas/features/passwall/bloc/passwall_cubit.dart' as _i15;
import 'package:window_meas/features/profile/settings/cubit/settings_cubit.dart'
    as _i16;
import 'package:window_meas/features/profile/settings/data/ds/settings_local_ds.dart'
    as _i7;
import 'package:window_meas/features/profile/settings/data/ds/settings_remote_ds.dart'
    as _i6;
import 'package:window_meas/features/profile/settings/data/settings_repo.dart'
    as _i12;
import 'package:window_meas/features/templates/cubit/template_list_cubit.dart'
    as _i13;
import 'package:window_meas/features/templates/data/ds/template_local_ds.dart'
    as _i9;
import 'package:window_meas/features/templates/data/template_repo.dart' as _i11;

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
    gh.singleton<_i5.MeasurementRemoteDataSource>(
        () => _i5.MeasurementRemoteDataSourceImpl());
    gh.singleton<_i6.SettingsRemoteDataSource>(
        () => _i6.SettingsRemoteDataSourceImpl());
    gh.singleton<_i7.SettingsLocalDataSource>(
        () => _i7.SettingsIsarLocalDataSource(gh<_i4.Isar>()));
    gh.singleton<_i8.MeasurementLocalDataSource>(
        () => _i8.MeasurementIsarLocalDataSource(gh<_i4.Isar>()));
    gh.singleton<_i9.TemplateLocalDataSource>(
        () => _i9.TemplateIsarLocalDataSource(gh<_i4.Isar>()));
    gh.singleton<_i10.MeasurementRepository>(
        () => _i10.MeasurementRepositoryImpl(
              gh<_i8.MeasurementLocalDataSource>(),
              gh<_i5.MeasurementRemoteDataSource>(),
              gh<_i7.SettingsLocalDataSource>(),
            ));
    gh.singleton<_i11.TemplateRepository>(
        () => _i11.TemplateRepository(gh<_i9.TemplateLocalDataSource>()));
    gh.singleton<_i12.SettingsRepository>(() => _i12.SettingsRepository(
          gh<_i7.SettingsLocalDataSource>(),
          gh<_i6.SettingsRemoteDataSource>(),
        ));
    gh.factory<_i13.TemplateListCubit>(
        () => _i13.TemplateListCubit(gh<_i11.TemplateRepository>()));
    gh.factory<_i14.AuthCubit>(
        () => _i14.AuthCubit(gh<_i12.SettingsRepository>()));
    gh.factory<_i15.PassWallCubit>(
        () => _i15.PassWallCubit(gh<_i12.SettingsRepository>()));
    gh.factory<_i16.SettingsCubit>(
        () => _i16.SettingsCubit(gh<_i12.SettingsRepository>()));
    gh.factory<_i17.EditorCubit>(
        () => _i17.EditorCubit(gh<_i11.TemplateRepository>()));
    gh.factory<_i18.MeasurementListCubit>(() => _i18.MeasurementListCubit(
          gh<_i10.MeasurementRepository>(),
          gh<_i12.SettingsRepository>(),
        ));
    gh.factory<_i19.MeasurementDetailsCubit>(() => _i19.MeasurementDetailsCubit(
          gh<_i10.MeasurementRepository>(),
          gh<_i12.SettingsRepository>(),
        ));
    return this;
  }
}

class _$RegisterModule extends _i20.RegisterModule {}
