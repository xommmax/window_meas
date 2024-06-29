import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:window_meas/common/service_locator.dart';
import 'package:window_meas/common/view/company_header.dart';
import 'package:window_meas/features/passwall/bloc/passwall_cubit.dart';
import 'package:window_meas/features/passwall/bloc/passwall_state.dart';
import 'package:window_meas/l10n/localization.dart';

class PassWallScreen extends StatelessWidget {
  const PassWallScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) => BlocProvider<PassWallCubit>(
        create: (context) => getIt()..loadData(),
        child: PassWallView(),
      );
}

class PassWallView extends StatelessWidget {
  PassWallView({super.key});

  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: const CompanyAppBar(),
        body: SafeArea(
          child: BlocBuilder<PassWallCubit, PassWallState>(
            builder: (context, state) => Center(
              child: state.isLoading
                  ? const CircularProgressIndicator()
                  : state.isError
                      ? InkWell(
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const FaIcon(FontAwesomeIcons.rotateRight),
                              const SizedBox(width: 8),
                              Text(context.l10n.errorTryAgain),
                            ],
                          ),
                          onTap: () => context.read<PassWallCubit>().loadData())
                      : Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(36),
                              child: TextField(
                                controller: _controller,
                                decoration: InputDecoration(
                                  labelText: context.l10n.enterPassword,
                                ),
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () => checkPassword(
                                context,
                                _controller.text,
                                state.password!,
                              ),
                              child: Text(context.l10n.next),
                            ),
                          ],
                        ),
            ),
          ),
        ),
      );

  void checkPassword(BuildContext context, String enteredPassword, String appPassword) {
    if (enteredPassword == appPassword) {
      context.go('/meas_list');
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(context.l10n.wrongPassword),
          duration: const Duration(seconds: 2),
        ),
      );
    }
  }
}
