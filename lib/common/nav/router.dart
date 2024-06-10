import 'package:go_router/go_router.dart';
import 'package:window_meas/features/editor/filling_type/view/filling_type_list_screen.dart';
import 'package:window_meas/features/editor/opening_type/view/opening_type_list_screen.dart';
import 'package:window_meas/features/editor/view/editor_screen.dart';
import 'package:window_meas/features/meas/view/details/meas_details_screen.dart';
import 'package:window_meas/features/meas/view/list/meas_list_screen.dart';
import 'package:window_meas/features/profile/settings/view/settings_screen.dart';
import 'package:window_meas/features/profile/view/profile_screen.dart';
import 'package:window_meas/features/splash/view/welcome_screen.dart';
import 'package:window_meas/features/templates/view/template_list_screen.dart';

import '../view/scaffold_with_nav_bar.dart';

final appRouter = GoRouter(
  initialLocation: '/meas_list',
  debugLogDiagnostics: true,
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) =>
          ScaffoldWithNavBar(navigationShell: navigationShell),
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/meas_list',
              builder: (context, state) => const MeasurementListScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/profile',
              builder: (context, state) => const ProfileScreen(),
            ),
          ],
        ),
      ],
    ),
    GoRoute(
      path: '/splash',
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: '/editor',
      builder: (context, state) {
        final Map extra = state.extra as Map? ?? {};
        return EditorScreen(
          mode: extra['mode'],
          scheme: extra['scheme'],
        );
      },
    ),
    GoRoute(
      path: '/meas_details/:id',
      builder: (context, state) => MeasurementDetailsScreen(state.pathParameters['id']!),
    ),
    GoRoute(
      path: '/template_list',
      builder: (context, state) {
        final Map extra = state.extra as Map? ?? {};
        return TemplateListScreen(
          mode: extra['mode'],
        );
      },
    ),
    GoRoute(
      path: '/settings',
      builder: (context, state) => const SettingsScreen(),
    ),
    GoRoute(
      path: '/opening_type_list',
      builder: (context, state) {
        final Map extra = state.extra as Map? ?? {};
        return OpeningTypeListScreen(
          selectedOpeningType: extra['selectedOpeningType'],
        );
      },
    ),
    GoRoute(
      path: '/filling_type_list',
      builder: (context, state) {
        final Map extra = state.extra as Map? ?? {};
        return FillingTypeListScreen(
          selectedFillingType: extra['selectedFillingType'],
        );
      },
    ),
  ],
);
