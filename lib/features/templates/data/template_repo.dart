import 'package:injectable/injectable.dart';
import 'package:window_meas/features/templates/data/ds/template_local_ds.dart';
import 'package:window_meas/features/templates/data/ds/template_remote_ds.dart';
import 'package:window_meas/features/templates/data/model/template.dart';

@singleton
class TemplateRepository {
  TemplateRepository(this.local, this.remote);

  final TemplateLocalDataSource local;
  final TemplateRemoteDataSource remote;

  Future<void> addTemplate(Template template) => local.addTemplate(template.toDB());

  Future<List<Template>> getTemplates() async {
    final list = await local.getTemplates();
    return list.map((e) => Template.fromDB(e)).toList();
  }

  Future<Template?> getTemplate(int id) async {
    final db = await local.getTemplate(id);
    return db != null ? Template.fromDB(db) : null;
  }

  Future<void> updateTemplate(Template template) => local.updateTemplate(template.toDB());

  Stream<List<Template>> watchTemplates() =>
      local.watchTemplates().map((list) => list.map((e) => Template.fromDB(e)).toList());
}
