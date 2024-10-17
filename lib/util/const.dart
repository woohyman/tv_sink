import 'package:event_bus/event_bus.dart';

const String listItemSelect = "ListItemSelect"; //通知列表选中项变化
const String scrollToItemSelect = "ScrollToItemSelect";//通知列表滚动到指定选中项
const String tabSelect = "TabSelect";//通知Tab变化

const String keySelectState = "keySelectState";//通知Tab变化
const String keyImportState = "keyImportListState";//导入数据变化

const String startPlayTv = "StartPlayTv";//用户开始播放电视
const String keyNotifyFavoriteList = "KeyNotifyFavoriteList";//用于通知收藏列表更新

const String keySPFavoriteList = "KeySPFavoriteList";//用于本地持久化存储

const String keyWifiCompulsion = "KeyWifiCompulsion";//用于通知是否强制连接wifi状态变化

final EventBus eventBus = EventBus();