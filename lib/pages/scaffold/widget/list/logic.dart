import 'package:get/get.dart';
import 'package:tv_sink/domain/data_provider/play_list_data_provider.dart';

class PlayListLogic<T extends PlayListDataProvider> extends GetxController {
  late PlayListDataProvider dataProvider;

  get list {
    return dataProvider.list;
  }

  getItemByIndex(int index) {
    return dataProvider.getItemByIndex(index);
  }

  fetchData() {
    dataProvider.fetchData();
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
