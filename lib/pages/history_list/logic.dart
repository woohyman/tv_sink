import 'package:get/get.dart';
import '../../data/db/channel_type_enum.dart';
import '../../data/db/tv_channels_repository.dart';
import '../../domain/model/tv_info.dart';

class HistoryListLogic extends GetxController {
  final _list = <String, TvInfo>{}.obs;
  final _historyDbRepository =
      TvChannelsRepository.fromType(ChannelType.historyChannel);

  @override
  Future<void> onInit() async {
    super.onInit();
    _list.clear();
    _list.addAll(await _historyDbRepository.query());
  }

  Map<String, TvInfo> get list {
    return _list;
  }
}
