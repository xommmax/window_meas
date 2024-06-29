import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:window_meas/common/view/colors.dart';
import 'package:window_meas/features/profile/settings/cubit/settings_cubit.dart';
import 'package:window_meas/features/profile/settings/cubit/settings_state.dart';
import 'package:window_meas/features/profile/settings/data/model/settings.dart';
import 'package:window_meas/l10n/localization.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 64),
              const CircleAvatar(
                radius: 50,
                backgroundColor: AppColors.secondary,
                child: FaIcon(FontAwesomeIcons.solidUser, color: Colors.white),
              ),
              const SizedBox(height: 10),
              BlocBuilder<SettingsCubit, SettingsState>(
                builder: (context, state) => Text(
                  state.settings?.userName ?? Settings.defaultUserName,
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ),
              const SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () => context.push('/template_list'),
                      child: Column(
                        children: [
                          const Divider(height: 1, color: Colors.black12),
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Text(
                              context.l10n.templates,
                              style: Theme.of(context).textTheme.titleSmall,
                            ),
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () => context.push('/settings'),
                      child: Column(
                        children: [
                          const Divider(height: 1, color: Colors.black12),
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Text(
                              context.l10n.settings,
                              style: Theme.of(context).textTheme.titleSmall,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Divider(height: 1, color: Colors.black12),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
}
