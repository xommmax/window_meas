import 'package:isar/isar.dart';

part 'measurement_db.g.dart';

@collection
class MeasurementDB {
  Id? innerId;
  @Index(unique: true)
  late String id;
  late DateTime date;
  late String address;
  late String clientName;
  late String phoneNumber;
  late bool assembly;
  late bool disassembly;
  late bool delivery;
  late bool unloading;
  late String buildingType;
}
