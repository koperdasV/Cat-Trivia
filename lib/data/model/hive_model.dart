import 'package:hive/hive.dart';

part 'hive_model.g.dart';

@HiveType(typeId: 0)
class Info extends HiveObject {
  @HiveField(0)
  final String info;

  Info({
    required this.info,
  });
}
