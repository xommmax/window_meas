import 'package:flutter/material.dart';
import 'package:window_meas/common/view/colors.dart';

class MeasurementParamSection extends ExpansionPanel {
  MeasurementParamSection({
    required this.title,
    required super.isExpanded,
    required super.body,
  }) : super(
          headerBuilder: (context, isExpanded) => ListTile(
            title: Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ),
          backgroundColor: AppColors.primary,
          canTapOnHeader: true,
        );

  final String title;
}
