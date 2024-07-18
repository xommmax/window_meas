import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:window_meas/features/measurement/view/details/confirmation_dialog.dart';
import 'package:window_meas/features/measurement/view/details/widgets/items/items.dart';
import 'package:window_meas/features/profile/settings/cubit/settings_cubit.dart';
import 'package:window_meas/features/profile/settings/cubit/settings_state.dart';
import 'package:window_meas/features/profile/settings/data/model/settings.dart';
import 'package:window_meas/l10n/localization.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  @override
  Widget build(BuildContext context) => const SettingsView();
}

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.l10n.settings),
      ),
      body: SafeArea(
        child: BlocBuilder<SettingsCubit, SettingsState>(
          builder: (context, state) {
            if (state.settings == null) {
              return const Center(child: CircularProgressIndicator());
            } else {
              return SettingsOptionList(state.settings!);
            }
          },
        ),
      ),
    );
  }
}

class SettingsOptionList extends StatelessWidget {
  const SettingsOptionList(this.settings, {super.key});

  final Settings settings;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(height: 8),
        SwitchItem(
          title: context.l10n.printEmptyFields,
          value: settings.printEmptyFields,
          onChanged: (value) => context
              .read<SettingsCubit>()
              .updateSettings(settings.copyWith(printEmptyFields: value)),
        ),
        const Divider(),
        InputItem(
          title: context.l10n.userName,
          value: settings.userName,
          onChanged: (value) =>
              context.read<SettingsCubit>().updateSettings(settings.copyWith(userName: value)),
        ),
        const Divider(),
        if (settings.isAdmin) ...[
          SwitchItem(
            title: context.l10n.adminMode,
            value: settings.isAdminModeEnabled,
            onChanged: (value) => context
                .read<SettingsCubit>()
                .updateSettings(settings.copyWith(isAdminModeEnabled: value)),
          ),
          const Divider(),
        ],
        if (FirebaseAuth.instance.currentUser != null) ...[
          GestureDetector(
            onTap: () => _logout(context),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 12.0),
              child: Text(
                context.l10n.logout,
                style:
                    const TextStyle(fontWeight: FontWeight.w600, fontSize: 16, color: Colors.red),
              ),
            ),
          ),
          const Divider(),
        ],
      ],
    );
  }

  Future<void> _logout(BuildContext context) async {
    final shouldLogout = await ConfirmationDialog.show(
      context,
      context.l10n.logout,
      context.l10n.logoutDesc,
    );
    if (shouldLogout && context.mounted) {
      await context.read<SettingsCubit>().logout();
      if (context.mounted) context.go('/auth');
    }
  }
}
