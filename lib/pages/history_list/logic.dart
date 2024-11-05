import 'package:get/get.dart';
import '../../domain/data_provider/base/histroty_list_data_provider.dart';
import '../../domain/model/tv_channel_info_model.dart';

class HistoryListLogic extends GetxController {
  final _dataProvider = HistoryListDataProvider.fromGet();

  Future<Map<String, TvChannelInfoModel>> get fetchData async {
    return _dataProvider.fetchData();
  }
}
