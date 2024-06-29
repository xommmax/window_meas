import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CompanyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CompanyAppBar({super.key});

  static const height = 76.0;

  @override
  Widget build(BuildContext context) => AppBar(
        toolbarHeight: height,
        title: Container(
          padding: const EdgeInsets.symmetric(vertical: 12),
          height: height,
          child: SvgPicture.asset('assets/white_logo.svg'),
        ),
      );

  @override
  Size get preferredSize => const Size.fromHeight(height);
}
