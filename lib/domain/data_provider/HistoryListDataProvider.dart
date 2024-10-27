
import 'package:get/get.dart';

import '../../data/db/HistoryDbRepository.dart';
import '../model/TvInfo.dart';

class HistoryListDataProvider {
  final list = <String, TvInfo>{}.obs;
  final _historyDbRepository = HistoryDbRepository();

  factory HistoryListDataProvider.fromGet() {
    return Get.find<HistoryListDataProvider>();
  }

  factory HistoryListDataProvider.preFetchData() {
    final _upgradeController = HistoryListDataProvider._();
    _upgradeController._fetchVersion();
    return _upgradeController;
  }

  HistoryListDataProvider._();

  Future<void> _fetchVersion() async {
    final _list = await _historyDbRepository.dogs();
    list.clear();
    list.addAll(_list);
  }
}
