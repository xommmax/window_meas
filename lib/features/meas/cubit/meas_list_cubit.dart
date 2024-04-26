import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:window_meas/features/meas/cubit/meas_list_state.dart';
import 'package:window_meas/features/meas/data/meas_repo.dart';

class MeasurementListCubit extends Cubit<MeasurementListState> {
  MeasurementListCubit(this.repo) : super(MeasurementListState());

  final MeasurementRepository repo;
}
