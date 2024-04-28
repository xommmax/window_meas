import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:window_meas/common/ext/context_ext.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 100),
            const CircleAvatar(
              radius: 50,
              child: FaIcon(FontAwesomeIcons.solidUser),
            ),
            const SizedBox(height: 10),
            Text(context.l10n.myProfile, style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Divider(),
                  InkWell(
                    onTap: () => context.push('/editor'),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(context.l10n.templates, style: Theme.of(context).textTheme.titleSmall),
                    ),
                  ),
                  const Divider(),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      context.l10n.settings,
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ),
                  const Divider(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
