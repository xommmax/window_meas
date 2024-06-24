import 'package:flutter_bloc/flutter_bloc.dart';

abstract class EventCubit<State> extends Cubit<State> {
  EventCubit(super.initialState);

  void emitEvent(State event) {
    final currentState = state;
    emit(event);
    emit(currentState);
  }
}
