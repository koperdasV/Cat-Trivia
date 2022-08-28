import 'package:hive/hive.dart';

import '../model/hive_model.dart';

class InfoRepository {
  late final Box _infoBox;

  Future<void> init() async {
    Hive.registerAdapter(InfoAdapter());
    _infoBox = await Hive.openBox<Info>('info');
  }

  Box get userBox => _infoBox;

  //get info from hive database
  List<Info> getInfo() {
    final infoList = _infoBox.values.toList();
    return infoList as List<Info>;
  }

  // adding info to hive db
  Future<List<Info>> addInfo(Info newInfo) async {
    await _infoBox.add(newInfo);
    return getInfo();
  }

}