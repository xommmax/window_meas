import 'package:injectable/injectable.dart';
import 'package:window_meas/features/templates/data/default_templates.dart';
import 'package:window_meas/features/templates/data/ds/template_local_ds.dart';
import 'package:window_meas/features/templates/data/model/template.dart';
import 'package:window_meas/features/templates/view/template_list_screen.dart';

@singleton
class TemplateRepository {
  TemplateRepository(this.local);

  final TemplateLocalDataSource local;

  Future<void> addTemplate(Template template) => local.addTemplate(template.toDB());

  Future<List<Template>> getTemplates(TemplateType type) async {
    final list = await local.getTemplates(type);
    return list.map((e) => Template.fromDB(e)).toList();
  }

  Future<Template?> getTemplate(int id) async {
    final db = await local.getTemplate(id);
    return db != null ? Template.fromDB(db) : null;
  }

  Future<void> updateTemplate(Template template) => local.updateTemplate(template.toDB());

  Stream<List<Template>> watchTemplates(TemplateType type) =>
      local.watchTemplates(type).map((list) => list.map((e) => Template.fromDB(e)).toList());

  Future<void> deleteTemplate(String id) => local.deleteTemplate(id);

  Future<void> addDefaultTemplates() async {
    await local.addTemplates(getDefaultSchemeTemplates().map((e) => e.toDB()).toList());
    await local.addTemplates(getDefaultFlexiblesTemplates().map((e) => e.toDB()).toList());
  }
}
