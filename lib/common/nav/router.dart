import 'package:go_router/go_router.dart';
import 'package:window_meas/features/editor/view/editor_screen.dart';
import 'package:window_meas/features/meas/list/view/meas_list_screen.dart';
import 'package:window_meas/features/profile/view/profile_screen.dart';
import 'package:window_meas/features/splash/view/welcome_screen.dart';

import '../view/scaffold_with_nav_bar.dart';

final appRouter = GoRouter(
  initialLocation: '/meas_list',
  debugLogDiagnostics: true,
  routes: [
    GoRoute(
      path: '/splash',
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: '/editor',
      builder: (context, state) => const EditorScreen(),
    ),
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) => ScaffoldWithNavBar(navigationShell: navigationShell),
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/meas_list',
              builder: (context, state) => const MeasListScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/profile',
              builder: (context, state) => const ProfileScreen(),
              routes: [
                // GoRoute(
                //   path: 'breedDetails',
                //   builder: (context, state) =>
                //       BreedDetailsScreen(breed: state.extra as Breed),
                // )
              ],
            ),
          ],
        ),
      ],
    ),
  ],
);
