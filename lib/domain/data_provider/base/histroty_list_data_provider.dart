import 'package:get/get.dart';
import 'package:tv_sink/domain/model/transform.dart';
import 'package:tv_sink/domain/model/tv_channel_info_model.dart';
import 'package:universal_platform/universal_platform.dart';

import '../../../data/db/channel_type_enum.dart';
import '../../../data/db/tv_channels_repository.dart';
import '../play_list_data_provider.dart';

class HistoryListDataProvider extends PlayListDataProvider {
  final _historyDbRepository =
      TvChannelsRepository.fromType(ChannelType.historyChannel);

  factory HistoryListDataProvider.fromGet() {
    return Get.find<HistoryListDataProvider>();
  }

  HistoryListDataProvider();

  void setList(MapEntry<String, TvChannelInfoModel> entry) {
    list[entry.key] = entry.value;
    TvChannelsRepository.fromType(ChannelType.historyChannel)
        .insert(entry.toInfo());
  }

  @override
  Future<Map<String, TvChannelInfoModel>> fetchData() async {
    if (UniversalPlatform.isWeb) {
      return list;
    } else {
      final _historyDbList = await _historyDbRepository.query();
      return _historyDbList.reversed.toList().toMap();
    }
  }
}
