import 'package:get/get.dart';
import '../../data/db/OptionalDbRepository.dart';
import '../model/TvInfo.dart';
import 'play_list_data_provider.dart';

class SetOptionalTvList {
  final _optionalUrlControl = OptionalDbRepository();

  void invoke(Map<String, TvInfo> list) {
    //先往数据库中填充数据
    _optionalUrlControl.deleteAll();
    _optionalUrlControl.insertAll(list);
  }
}
