import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';
import 'package:window_meas/features/templates/data/model/template_db.dart';

abstract class TemplateLocalDataSource {
  Future<List<TemplateDB>> getTemplates();

  Stream<List<TemplateDB>> watchTemplates();

  Future<TemplateDB?> getTemplate(int id);

  Future<void> addTemplate(TemplateDB template);

  Future<void> addTemplates(List<TemplateDB> templates);

  Future<void> updateTemplate(TemplateDB template);

  Future<void> deleteTemplate(int id);
}

@Singleton(as: TemplateLocalDataSource)
class TemplateIsarLocalDataSource implements TemplateLocalDataSource {
  TemplateIsarLocalDataSource(this.isar);

  final Isar isar;

  @override
  Future<void> addTemplate(TemplateDB template) =>
      isar.writeTxn(() => isar.templateDBs.put(template));

  @override
  Future<void> addTemplates(List<TemplateDB> templates) =>
      isar.writeTxn(() => isar.templateDBs.putAll(templates));

  @override
  Future<void> deleteTemplate(int id) => isar.writeTxn(() => isar.templateDBs.delete(id));

  @override
  Future<TemplateDB?> getTemplate(int id) => isar.templateDBs.get(id);

  @override
  Future<List<TemplateDB>> getTemplates() => isar.templateDBs.where().sortByDateDesc().findAll();

  @override
  Future<void> updateTemplate(TemplateDB template) =>
      isar.writeTxn(() => isar.templateDBs.put(template));

  @override
  Stream<List<TemplateDB>> watchTemplates() => isar.templateDBs.where().sortByDateDesc().watch();
}
