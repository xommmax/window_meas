import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:window_meas/common/ext/cubit_ext.dart';
import 'package:window_meas/features/auth/bloc/auth_state.dart';
import 'package:window_meas/l10n/localization.dart';

@injectable
class AuthCubit extends EventCubit<AuthState> {
  AuthCubit() : super(AuthState.initial());

  Future<void> signInWithGoogle() async {
    try {
      emit(state.copyWith(isLoading: true));
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

      final googleCredential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );
      final firebaseCredentials = await FirebaseAuth.instance.signInWithCredential(
        googleCredential,
      );
      emit(state.copyWith(user: firebaseCredentials.user!));
    } catch (e) {
      emitEvent(state.copyWith(message: Localization.l10n.errorCannotLogin));
      debugPrint('@@@ Error signing in with Google: $e');
    } finally {
      emit(state.copyWith(isLoading: false));
    }
  }
}
