import 'package:get/get.dart';
import 'package:tv_sink/domain/data_provider/play_list_data_provider.dart';

import '../../../../domain/model/tv_channel_info_model.dart';

class PlayListLogic<T extends PlayListDataProvider> extends GetxController {
  late PlayListDataProvider dataProvider;

  Future<Map<String, TvChannelInfoModel>> fetchData() {
    return dataProvider.fetchData();
  }

  @override
  void onInit() {
    super.onInit();
    if (T == FeaturePlayListDataProvider) {
      dataProvider = FeaturePlayListDataProvider();
    } else if (T == OptionalPlayListDataProvider) {
      dataProvider = OptionalPlayListDataProvider.fromGet();
    } else {
      dataProvider = CollectPlayListDataProvider.fromGet();
    }
  }

  @override
  void onReady() {
    super.onReady();
    dataProvider.fetchData();
  }
}
