import 'package:get/get.dart';
import 'package:tv_sink/domain/model/transform.dart';
import '../../data/db/channel_type_enum.dart';
import '../../data/db/tv_channels_repository.dart';
import '../../domain/model/tv_channel_info_model.dart';

class HistoryListLogic extends GetxController {
  final _historyDbRepository =
      TvChannelsRepository.fromType(ChannelType.historyChannel);

  Future<Map<String, TvChannelInfoModel>> get fetchData async {
    return (await _historyDbRepository.query()).toMap();
  }
}
