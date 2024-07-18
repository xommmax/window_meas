import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:window_meas/common/service_locator.dart';
import 'package:window_meas/common/view/company_header.dart';
import 'package:window_meas/features/auth/bloc/auth_cubit.dart';
import 'package:window_meas/features/auth/bloc/auth_state.dart';
import 'package:window_meas/features/auth/view/login_button.dart';
import 'package:window_meas/l10n/localization.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) => BlocProvider<AuthCubit>(
        create: (context) => getIt(),
        child: BlocListener<AuthCubit, AuthState>(
          listener: (context, state) {
            if (state.skipAuth) {
              context.go('/meas_list');
            } else if (state.user != null) {
              if (state.isPasswordEntered) {
                context.go('/meas_list');
              } else {
                context.go('/passwall');
              }
            }
          },
          child: const AuthView(),
        ),
      );
}

class AuthView extends StatefulWidget {
  const AuthView({super.key});

  @override
  State<AuthView> createState() => _AuthViewState();
}

class _AuthViewState extends State<AuthView> {
  @override
  void initState() {
    super.initState();
    context.read<AuthCubit>().checkUserSignedInAndPasswordEntered();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: const CompanyAppBar(),
        body: SafeArea(
          child: BlocConsumer<AuthCubit, AuthState>(
            builder: (context, state) => (state.isLoading)
                ? const Center(child: CircularProgressIndicator())
                : Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        LoginButton(
                          icon: FontAwesomeIcons.google,
                          label: context.l10n.signInWithGoogle,
                          onPressed: context.read<AuthCubit>().signInWithGoogle,
                        ),
                        const SizedBox(height: 24),
                        LoginButton(
                          icon: FontAwesomeIcons.apple,
                          label: context.l10n.signInWithApple,
                          onPressed: context.read<AuthCubit>().signInWithApple,
                        ),
                      ],
                    ),
                  ),
            listener: (context, state) {
              if (state.message != null) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(state.message!)),
                );
              }
            },
          ),
        ),
      );
}
