import 'package:flutter/material.dart';

import 'package:flutter_gen/gen_l10n/l10n.dart';
import 'package:window_meas/common/nav/router.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) => const MainAppView();
}

class MainAppView extends StatelessWidget {
  const MainAppView({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp.router(
        routerConfig: appRouter,
        localizationsDelegates: L10n.localizationsDelegates,
        supportedLocales: L10n.supportedLocales,
        locale: const Locale('uk', 'UA'),
      );
}
