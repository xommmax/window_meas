import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:window_meas/features/templates/cubit/template_list_state.dart';
import 'package:window_meas/features/templates/data/template_repo.dart';
import 'package:window_meas/features/templates/view/template_list_screen.dart';

@injectable
class TemplateListCubit extends Cubit<TemplateListState> {
  TemplateListCubit(this.repo) : super(TemplateListState.empty());

  final TemplateRepository repo;
  StreamSubscription? templateSubscription;

  Future<void> watchTemplates(TemplateType type) async {
    templateSubscription = repo.watchTemplates(type).listen((templates) {
      emit(TemplateListState(templates: templates));
    });
    final templates = await repo.getTemplates(type);
    if (templates.isEmpty) {
      await repo.addDefaultTemplates();
    } else {
      emit(TemplateListState(templates: templates));
    }
  }

  Future<void> deleteTemplate(int index) async {
    final template = state.templates[index];
    await repo.deleteTemplate(template.id);
  }

  @override
  Future<void> close() {
    templateSubscription?.cancel();
    return super.close();
  }
}
