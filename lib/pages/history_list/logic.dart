import 'package:get/get.dart';
import '../../data/db/HistoryDbRepository.dart';
import '../../domain/model/TvInfo.dart';

class HistoryListLogic extends GetxController {
  final _list = <String, TvInfo>{}.obs;
  final _historyDbRepository = HistoryDbRepository();

  @override
  Future<void> onInit() async {
    super.onInit();
    _list.clear();
    _list.addAll(await _historyDbRepository.dogs());
  }

  Map<String, TvInfo> get list {
    return _list;
  }
}
