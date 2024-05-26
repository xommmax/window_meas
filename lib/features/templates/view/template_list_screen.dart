import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:window_meas/common/service_locator.dart';
import 'package:window_meas/common/view/colors.dart';
import 'package:window_meas/features/templates/cubit/template_list_cubit.dart';
import 'package:window_meas/features/templates/cubit/template_list_state.dart';
import 'package:window_meas/features/templates/view/template_list_item.dart';
import 'package:window_meas/l10n/localization.dart';

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
      appBar: AppBar(
        title: Text(context.l10n.templates),
      ),
      body: const SafeArea(
        child: TemplateList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _addTemplate(context),
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white,
        child: const Icon(Icons.add),
      ));

  Future<void> _addTemplate(BuildContext context) async {
    context.push('/editor', extra: {'isTemplate': true});
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
