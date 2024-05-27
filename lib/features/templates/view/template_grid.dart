import 'package:flutter/material.dart';
import 'package:window_meas/common/view/colors.dart';
import 'package:window_meas/features/templates/data/model/template.dart';
import 'package:window_meas/features/templates/view/template_list_item.dart';

class TemplateGridView extends StatefulWidget {
  const TemplateGridView({
    required this.templates,
    required this.onSelected,
    super.key,
  });

  final List<Template> templates;
  final Function(int) onSelected;

  @override
  State<TemplateGridView> createState() => _TemplateGridViewState();
}

class _TemplateGridViewState extends State<TemplateGridView> {
  int? selectedIndex;

  @override
  Widget build(BuildContext context) => GridView.builder(
        padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 12),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
        ),
        itemCount: widget.templates.length,
        itemBuilder: (context, index) => InkWell(
          onTap: () {
            widget.onSelected(index);
            setState(() => index == selectedIndex ? selectedIndex = null : selectedIndex = index);
          },
          child: ColoredBox(
            color: selectedIndex == index ? AppColors.primary.withOpacity(0.5) : Colors.transparent,
            child: TemplateItem(widget.templates[index]),
          ),
        ),
      );
}
