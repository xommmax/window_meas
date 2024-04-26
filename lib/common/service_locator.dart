import 'package:get_it/get_it.dart';
import 'package:window_meas/features/editor/bloc/editor_cubit.dart';
import 'package:window_meas/features/meas/cubit/meas_list_cubit.dart';

final getIt = GetIt.instance;

class ServiceLocator {
  static void init() {
    getIt
      ..registerFactory<EditorCubit>(() => EditorCubit())
      ..registerFactory<MeasurementListCubit>(() => MeasurementListCubit(
            getIt(),
          ));
  }
}
