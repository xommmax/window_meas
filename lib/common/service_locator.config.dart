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
import 'package:window_meas/common/register_module.dart' as _i21;
import 'package:window_meas/features/auth/bloc/auth_cubit.dart' as _i15;
import 'package:window_meas/features/editor/bloc/drawing_cubit.dart' as _i3;
import 'package:window_meas/features/editor/bloc/editor_cubit.dart' as _i18;
import 'package:window_meas/features/measurement/cubit/meas_details_cubit.dart'
    as _i20;
import 'package:window_meas/features/measurement/cubit/meas_list_cubit.dart'
    as _i19;
import 'package:window_meas/features/measurement/data/db/ds/meas_local_ds.dart'
    as _i9;
import 'package:window_meas/features/measurement/data/domain/meas_repository.dart'
    as _i11;
import 'package:window_meas/features/measurement/data/remote/ds/meas_remote_ds.dart'
    as _i6;
import 'package:window_meas/features/passwall/bloc/passwall_cubit.dart' as _i16;
import 'package:window_meas/features/profile/settings/cubit/settings_cubit.dart'
    as _i17;
import 'package:window_meas/features/profile/settings/data/ds/settings_local_ds.dart'
    as _i8;
import 'package:window_meas/features/profile/settings/data/ds/settings_remote_ds.dart'
    as _i7;
import 'package:window_meas/features/profile/settings/data/settings_repo.dart'
    as _i12;
import 'package:window_meas/features/templates/cubit/template_list_cubit.dart'
    as _i14;
import 'package:window_meas/features/templates/data/ds/template_local_ds.dart'
    as _i10;
import 'package:window_meas/features/templates/data/ds/template_remote_ds.dart'
    as _i5;
import 'package:window_meas/features/templates/data/template_repo.dart' as _i13;

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
    gh.singleton<_i7.SettingsRemoteDataSource>(
        () => _i7.SettingsRemoteDataSourceImpl());
    gh.singleton<_i8.SettingsLocalDataSource>(
        () => _i8.SettingsIsarLocalDataSource(gh<_i4.Isar>()));
    gh.singleton<_i9.MeasurementLocalDataSource>(
        () => _i9.MeasurementIsarLocalDataSource(gh<_i4.Isar>()));
    gh.singleton<_i10.TemplateLocalDataSource>(
        () => _i10.TemplateIsarLocalDataSource(gh<_i4.Isar>()));
    gh.singleton<_i11.MeasurementRepository>(() => _i11.MeasurementRepository(
          gh<_i9.MeasurementLocalDataSource>(),
          gh<_i6.MeasurementRemoteDataSource>(),
          gh<_i8.SettingsLocalDataSource>(),
        ));
    gh.singleton<_i12.SettingsRepository>(() => _i12.SettingsRepository(
          gh<_i8.SettingsLocalDataSource>(),
          gh<_i7.SettingsRemoteDataSource>(),
        ));
    gh.singleton<_i13.TemplateRepository>(() => _i13.TemplateRepository(
          gh<_i10.TemplateLocalDataSource>(),
          gh<_i5.TemplateRemoteDataSource>(),
        ));
    gh.factory<_i14.TemplateListCubit>(
        () => _i14.TemplateListCubit(gh<_i13.TemplateRepository>()));
    gh.factory<_i15.AuthCubit>(
        () => _i15.AuthCubit(gh<_i12.SettingsRepository>()));
    gh.factory<_i16.PassWallCubit>(
        () => _i16.PassWallCubit(gh<_i12.SettingsRepository>()));
    gh.factory<_i17.SettingsCubit>(
        () => _i17.SettingsCubit(gh<_i12.SettingsRepository>()));
    gh.factory<_i18.EditorCubit>(
        () => _i18.EditorCubit(gh<_i13.TemplateRepository>()));
    gh.factory<_i19.MeasurementListCubit>(() => _i19.MeasurementListCubit(
          gh<_i11.MeasurementRepository>(),
          gh<_i12.SettingsRepository>(),
        ));
    gh.factory<_i20.MeasurementDetailsCubit>(() => _i20.MeasurementDetailsCubit(
          gh<_i11.MeasurementRepository>(),
          gh<_i12.SettingsRepository>(),
        ));
    return this;
  }
}

class _$RegisterModule extends _i21.RegisterModule {}
