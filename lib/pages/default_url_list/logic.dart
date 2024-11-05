import 'package:get/get.dart';
import 'package:tv_sink/pages/model/transform.dart';
import '../../data/model/file_m3u_info.dart';
import '../../data/net/supabase/m3u_file_repository.dart';
import '../../domain/download_manager.dart';
import '../../domain/data_provider/user_data_provider.dart';
import '../model/file_m3u_info_model.dart';

class DefaultUrlListLogic extends GetxController {
  final _downloadController = DownloadManager();
  final _m3uFileRepository = M3uFileRepository();

  Future<List<FileM3uInfoModel>> get listFuture async {
    List<FileM3uInfo> list = [];
    if (UserDataProvider.fromGet().isVip) {
      list = await _m3uFileRepository.fetchFileList();
    } else {
      list = await _m3uFileRepository.fetchFileList(level: 0);
    }
    return list.map((element) {
      return element.toModel();
    }).toList();
  }

  Stream<String> getStreamByUrl(String url) {
    return _downloadController.fetchRemoteData(url);
  }
}
