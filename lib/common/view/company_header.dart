import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:window_meas/common/view/colors.dart';

class CompanyHeader extends StatelessWidget {
  const CompanyHeader({super.key});

  @override
  Widget build(BuildContext context) => Container(
        padding: const EdgeInsets.symmetric(vertical: 12),
        width: double.infinity,
        color: AppColors.secondary,
        child: SvgPicture.asset(
          'assets/white_logo.svg',
          width: 200,
        ),
      );
}
