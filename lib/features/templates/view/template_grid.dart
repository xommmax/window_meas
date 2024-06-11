import 'package:flutter/material.dart';
import 'package:window_meas/common/view/colors.dart';
import 'package:window_meas/features/templates/data/model/template.dart';
import 'package:window_meas/features/templates/view/template_list_item.dart';

class TemplateGridView extends StatelessWidget {
  const TemplateGridView({
    required this.templates,
    required this.onSelected,
    required this.selectedIndex,
    super.key,
  });

  final List<Template> templates;
  final Function(int) onSelected;
  final int? selectedIndex;

  @override
  Widget build(BuildContext context) => GridView.builder(
        padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 12),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
        ),
        itemCount: templates.length,
        itemBuilder: (context, index) => InkWell(
          onTap: () => onSelected(index),
          child: ColoredBox(
            color: selectedIndex == index ? AppColors.primary.withOpacity(0.5) : Colors.transparent,
            child: TemplateItem(templates[index]),
          ),
        ),
      );
}
