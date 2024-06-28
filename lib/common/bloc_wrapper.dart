import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:window_meas/common/service_locator.dart';
import 'package:window_meas/features/profile/settings/cubit/settings_cubit.dart';

class BlocWrapper extends StatelessWidget {
  const BlocWrapper({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) => BlocProvider<SettingsCubit>(
        create: (context) => getIt()..watchSettings(),
        lazy: false,
        child: child,
      );
}
