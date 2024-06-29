import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:window_meas/features/passwall/bloc/passwall_state.dart';
import 'package:window_meas/features/profile/settings/data/settings_repo.dart';

@injectable
class PassWallCubit extends Cubit<PassWallState> {
  PassWallCubit(this._settingsRepository) : super(PassWallState.initial());

  final SettingsRepository _settingsRepository;

  Future<void> loadData() async {
    emit(state.copyWith(isLoading: true, isError: false));
    try {
      final vars = await FirebaseFirestore.instance.collection('app_variables').get();

      final adminsField = vars.docs.firstWhere((e) => e.id == 'admins').data();
      final adminsList = (adminsField['admins'] as List).cast<String>();
      final userEmail = FirebaseAuth.instance.currentUser?.email;
      final isAdmin = adminsList.contains(userEmail);

      final kommoField = vars.docs.firstWhere((e) => e.id == 'kommo').data();
      final kommoSubdomain = kommoField['subdomain'] as String;
      final kommoToken = kommoField['token'] as String;
      final kommoListId = kommoField['listId'] as int;

      final appField = vars.docs.firstWhere((e) => e.id == 'app').data();
      final appPassword = appField['password'] as String;

      final settings = await _settingsRepository.getSettings();
      if (settings != null) {
        await _settingsRepository.saveSettings(settings.copyWith(
          isAdmin: isAdmin,
          adminsList: adminsList,
          kommoSubdomain: kommoSubdomain,
          kommoToken: kommoToken,
          kommoListId: kommoListId,
          appPassword: appPassword,
        ));

        emit(state.copyWith(password: appPassword));
      }
    } catch (e) {
      emit(state.copyWith(isError: true));
    } finally {
      emit(state.copyWith(isLoading: false));
    }
  }

  Future<void> setPasswordEntered() async {
    final settings = await _settingsRepository.getSettings();
    if (settings != null) {
      await _settingsRepository.saveSettings(settings.copyWith(isPasswordEntered: true));
    }
  }
}
