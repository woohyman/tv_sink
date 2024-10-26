
import 'package:get/get.dart';

import '../../data/db/HistoryDbRepository.dart';
import '../model/TvInfo.dart';

class HistoryListController {
  final list = <String, TvInfo>{}.obs;
  final _historyDbRepository = HistoryDbRepository();

  factory HistoryListController.fromGet() {
    return Get.find<HistoryListController>();
  }

  factory HistoryListController.preFetchData() {
    final _upgradeController = HistoryListController._();
    _upgradeController._fetchVersion();
    return _upgradeController;
  }

  HistoryListController._();

  Future<void> _fetchVersion() async {
    final _list = await _historyDbRepository.dogs();
    list.clear();
    list.addAll(_list);
  }
}
