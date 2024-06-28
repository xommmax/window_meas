import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:window_meas/common/service_locator.dart';
import 'package:window_meas/features/auth/bloc/auth_cubit.dart';
import 'package:window_meas/features/auth/bloc/auth_state.dart';
import 'package:window_meas/features/auth/view/login_button.dart';

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
          child: BlocConsumer<AuthCubit, AuthState>(
            builder: (context, state) => Stack(
              fit: StackFit.expand,
              children: [
                Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      LoginButton(
                        icon: FontAwesomeIcons.google,
                        label: 'Sign In with Google',
                        onPressed: context.read<AuthCubit>().signInWithGoogle,
                      ),
                    ],
                  ),
                ),
                if (state.isLoading) const Center(child: CircularProgressIndicator()),
              ],
            ),
            listener: (context, state) {
              if (state.user != null) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Successfully signed in with Google')),
                );
              } else if (state.message != null) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(state.message!)),
                );
              }
            },
          ),
        ),
      );
}
