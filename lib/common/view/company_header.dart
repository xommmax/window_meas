import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:window_meas/features/profile/settings/cubit/settings_cubit.dart';
import 'package:window_meas/features/profile/settings/cubit/settings_state.dart';
import 'package:window_meas/l10n/localization.dart';

class CompanyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CompanyAppBar({super.key});

  static const height = 76.0;

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<SettingsCubit, SettingsState>(builder: (context, state) {
        Widget child = Container(
          padding: const EdgeInsets.symmetric(vertical: 12),
          height: height,
          child: SvgPicture.asset('assets/white_logo.svg'),
        );

        if (state.settings?.isAdminModeEnabled == true) {
          child = Banner(
            message: context.l10n.admin,
            location: BannerLocation.topEnd,
            child: child,
          );
        }

        return AppBar(
          toolbarHeight: height,
          title: child,
          titleSpacing: 0.0,
        );
      });

  @override
  Size get preferredSize => const Size.fromHeight(height);
}
