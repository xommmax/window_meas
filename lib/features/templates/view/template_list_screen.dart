import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:window_meas/common/service_locator.dart';
import 'package:window_meas/common/view/colors.dart';
import 'package:window_meas/features/templates/cubit/template_list_cubit.dart';
import 'package:window_meas/features/templates/cubit/template_list_state.dart';
import 'package:window_meas/features/templates/view/template_list_item.dart';

class TemplateListScreen extends StatelessWidget {
  const TemplateListScreen({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider<TemplateListCubit>(
        create: (context) => getIt()..watchTemplates(),
        child: const TemplateListView(),
      );
}

class TemplateListView extends StatelessWidget {
  const TemplateListView({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 12),
              width: double.infinity,
              color: AppColors.secondary,
              child: SvgPicture.asset(
                'assets/white_logo.svg',
                width: 200,
              ),
            ),
            const Expanded(child: TemplateList()),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _addTemplate(context),
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white,
        child: const Icon(Icons.add),
      ));

  Future<void> _addTemplate(BuildContext context) async {
    final id = await context.read<TemplateListCubit>().addNewTemplate();

    if (context.mounted) {
      context.push('/template_details/$id');
    }
  }
}

class TemplateList extends StatelessWidget {
  const TemplateList({super.key});

  @override
  Widget build(BuildContext context) => BlocBuilder<TemplateListCubit, TemplateListState>(
        builder: (context, state) => ListView.builder(
          padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 12),
          itemCount: state.templates.length,
          itemBuilder: (context, index) => TemplateItem(state.templates[index]),
        ),
      );
}
