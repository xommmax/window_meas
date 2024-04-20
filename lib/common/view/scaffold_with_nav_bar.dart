import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:window_meas/common/ext/context_ext.dart';

class ScaffoldWithNavBar extends StatelessWidget {
  final StatefulNavigationShell navigationShell;

  const ScaffoldWithNavBar({super.key, required this.navigationShell});

  @override
  Widget build(BuildContext context) => Scaffold(
        body: navigationShell,
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            // BottomNavigationBarItem(
            //   icon: const FaIcon(FontAwesomeIcons.thumbsUp),
            //   label: context.l10n.yaynay,
            // ),
            // BottomNavigationBarItem(
            //   icon: const FaIcon(FontAwesomeIcons.dog),
            //   label: context.l10n.breeds,
            // ),
            // BottomNavigationBarItem(
            //   icon: const FaIcon(FontAwesomeIcons.magnifyingGlass),
            //   label: context.l10n.search,
            // ),
            // BottomNavigationBarItem(
            //   icon: const FaIcon(FontAwesomeIcons.solidStar),
            //   label: context.l10n.favorites,
            // ),
          ],
          currentIndex: navigationShell.currentIndex,
          onTap: (index) => navigationShell.goBranch(index,
              initialLocation: index == navigationShell.currentIndex),
        ),
      );
}
