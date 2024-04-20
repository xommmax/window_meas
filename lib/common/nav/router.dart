import 'package:go_router/go_router.dart';

import '../view/scaffold_with_nav_bar.dart';

final appRouter = GoRouter(
  //         initialLocation: '/breeds',
  debugLogDiagnostics: true,
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return ScaffoldWithNavBar(navigationShell: navigationShell);
      },
      branches: const [
        //               StatefulShellBranch(
        //                 routes: [
        //                   GoRoute(
        //                     path: '/yaynay',
        //                     builder: (context, state) => const YayNayScreen(),
        //                   ),
        //                 ],
        //               ),
        //               StatefulShellBranch(
        //                 routes: [
        //                   GoRoute(
        //                     path: '/breeds',
        //                     builder: (context, state) => const BreedsScreen(),
        //                     routes: [
        //                       GoRoute(
        //                         path: 'breedDetails',
        //                         builder: (context, state) =>
        //                             BreedDetailsScreen(breed: state.extra as Breed),
        //                       )
        //                     ],
        //                   ),
        //                 ],
        //               ),
        //               StatefulShellBranch(
        //                 routes: [
        //                   GoRoute(
        //                     path: '/search',
        //                     builder: (context, state) => const SearchScreen(),
        //                     routes: [
        //                       GoRoute(
        //                         path: 'breedDetails',
        //                         builder: (context, state) =>
        //                             BreedDetailsScreen(breed: state.extra as Breed),
        //                       )
        //                     ],
        //                   ),
        //                 ],
        //               ),
        //               StatefulShellBranch(
        //                 routes: [
        //                   GoRoute(
        //                     path: '/favorites',
        //                     builder: (context, state) => const FavoritesListScreen(),
        //                     routes: [
        //                       GoRoute(
        //                         path: 'breedDetails',
        //                         builder: (context, state) =>
        //                             BreedDetailsScreen(breed: state.extra as Breed),
        //                       )
        //                     ],
        //                   ),
        //                 ],
        //               ),
      ],
    ),
  ],
);
