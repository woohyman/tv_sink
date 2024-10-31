import 'package:get/get_rx/src/rx_types/rx_types.dart';
import '../../domain/data_provider/app_set_data_provider.dart';
import '../../domain/upgrade/upgrade_data_provider.dart';

class AppSettingState {
  get onlyPlayOnWifi => AppSetDataProvider.fromGet().onlyPlayOnWifi;

  get autoSourceSwitch => AppSetDataProvider.fromGet().autoSourceSwitch;

  get enableBackgroundPlay => AppSetDataProvider.fromGet().enableBackgroundPlay;

  RxBool needUpgrade = UpgradeDataProvider.fromGet().needUpgrade;

  RxString remoteVersion = UpgradeDataProvider.fromGet().remoteVersion;

  RxString localVersion = UpgradeDataProvider.fromGet().localVersion;

  AppSettingState();
}
