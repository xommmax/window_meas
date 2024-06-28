import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:window_meas/common/service_locator.dart';
import 'package:window_meas/features/auth/bloc/auth_cubit.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) => BlocProvider<AuthCubit>(
        create: (context) => getIt(),
        child: const AuthView(),
      );
}

class AuthView extends StatelessWidget {
  const AuthView({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
            child: Center(
          child: Text('AUTH SCREEN'),
        )),
      );
}
