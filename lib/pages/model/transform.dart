import '../../../data/model/file_m3u_info.dart';
import 'file_m3u_info_model.dart';

extension Transform on FileM3uInfo {
  FileM3uInfoModel toModel() {
    return FileM3uInfoModel(url, name, "");
  }
}
