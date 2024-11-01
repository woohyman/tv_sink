import 'package:get/get.dart';
import 'package:tv_sink/domain/model/transform.dart';
import '../../data/db/channel_type_enum.dart';
import '../../data/db/tv_channels_repository.dart';
import '../../domain/model/tv_channel_info_model.dart';

class HistoryListLogic extends GetxController {
  final _list = <String, TvChannelInfoModel>{}.obs;
  final _historyDbRepository =
      TvChannelsRepository.fromType(ChannelType.historyChannel);

  @override
  Future<void> onInit() async {
    super.onInit();
    _list.clear();

    _list.addAll((await _historyDbRepository.query()).toMap());
  }

  Map<String, TvChannelInfoModel> get list {
    return _list;
  }
}
