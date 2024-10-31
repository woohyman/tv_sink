import 'package:get/get.dart';
import 'package:supabase/supabase.dart';

import '../../data/net/m3u_file_repository.dart';
import '../../domain/download_manager.dart';
import '../../domain/data_provider/user_data_provider.dart';

class DefaultUrlListLogic extends GetxController {
  final _downloadController = DownloadController();
  final _m3uFileRepository = M3uFileRepository();

  Future<PostgrestList> get listFuture {
    if (UserDataProvider.fromGet().isVip) {
      return _m3uFileRepository.fetchFileList();
    } else {
      return _m3uFileRepository.fetchFileList(level: 0);
    }
  }

  Stream<String> getStreamByUrl(String url) {
    return _downloadController.fetchRemoteData(url);
  }
}
