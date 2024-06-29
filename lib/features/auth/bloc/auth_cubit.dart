import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:window_meas/common/ext/cubit_ext.dart';
import 'package:window_meas/features/auth/bloc/auth_state.dart';
import 'package:window_meas/features/profile/settings/data/settings_repo.dart';
import 'package:window_meas/l10n/localization.dart';

@injectable
class AuthCubit extends EventCubit<AuthState> {
  AuthCubit(this._settingsRepository) : super(AuthState.initial());

  final SettingsRepository _settingsRepository;

  Future<void> checkUserSignedInAndPasswordEntered() async {
    final user = FirebaseAuth.instance.currentUser;
    final settings = await _settingsRepository.getSettings();

    emit(state.copyWith(
      user: user,
      isPasswordEntered: settings?.isPasswordEntered == true,
    ));
  }

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
      _saveAndEmitUser(firebaseCredentials.user!);
    } catch (e) {
      emitEvent(state.copyWith(message: Localization.l10n.errorCannotLogin));
      debugPrint('@@@ Error signing in with Google: $e');
    } finally {
      emit(state.copyWith(isLoading: false));
    }
  }

  Future<void> signInWithApple() async {}

  Future<void> _saveAndEmitUser(User user) async {
    final settings = await _settingsRepository.getSettings();
    if (settings != null && user.displayName != null) {
      await _settingsRepository.saveSettings(settings.copyWith(userName: user.displayName!));
    }
    emit(state.copyWith(user: user));
  }
}
