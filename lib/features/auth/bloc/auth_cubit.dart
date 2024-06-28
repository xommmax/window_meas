import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:window_meas/features/auth/bloc/auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthState.initial());
}
