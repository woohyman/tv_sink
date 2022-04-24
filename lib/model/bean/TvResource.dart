import 'dart:core';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:tvSink/util/log.dart';

import '../../business/EventBus.dart';
import 'data.dart';

class CommonData with ChangeNotifier {
  void notifyPositionChangeAuto() {
    position = getPositionByName();
    notifyListeners();
  }

  void notifyPositionChangeByIndex(int tabIndex, int listIndex) {
    position.tabIndex = tabIndex;
    position.listIndex = listIndex;
    notifyListeners();
  }
}

Position position = Position(0, 0);

void notifyPositionChange(String tvName) {
  position = getPositionByName1(tvName);
}

bool iscotain(tvName) {
  return featuredTvLis.contains(tvName);
}

void addcollect(String tvName) {
  if (!featuredTvLis.contains(tvName)) {
    featuredTvLis.add(tvName);
  }
}

Position getPositionByName1(String tvName) {
  if (chineseTvLis.containsKey(tvName)) {
    return Position(0, chineseTvLis.keys.toList().indexOf(tvName));
  } else if (foreignTvLis.containsKey(tvName)) {
    return Position(1, foreignTvLis.keys.toList().indexOf(tvName));
  }
  return Position(0, 0);
}

Position getPositionByName() {
  String tvName = getTvName();
  if (chineseTvLis.containsKey(tvName)) {
    return Position(0, chineseTvLis.keys.toList().indexOf(tvName));
  } else if (foreignTvLis.containsKey(tvName)) {
    return Position(1, foreignTvLis.keys.toList().indexOf(tvName));
  }
  return Position(0, 0);
}

void removeurl(String tvName) {
  featuredTvLis.remove(tvName);
}

final _curPlayChannelMap = {};
int _index = 0;

int get index => _index;

void switchTab(int index) {
  _index = index;
}

Map<String, Object>? getFeaturedItemByKey(String key){
  if (chineseTvLis.containsKey(key)) {
    return chineseTvLis[key];
  }
  if (foreignTvLis.containsKey(key)) {
    return foreignTvLis[key];
  }
}

String getIconUrl(int tabIndex, int listIndex) {
  switch (tabIndex) {
    case 0:
      return chineseTvLis.values.elementAt(listIndex)["tvg-logo"].toString();
    case 1:
      return foreignTvLis.values.elementAt(listIndex)["tvg-logo"].toString();
    case 2:
      return getFeaturedItemByKey(featuredTvLis[listIndex])?["tvg-logo"].toString()??"";
  }
  return "";
}

String getIconUrlByTvName(String _tvName) {
  if (chineseTvLis.containsKey(_tvName)) {
    return chineseTvLis[_tvName]?["tvg-logo"].toString() ?? "";
  }
  if (foreignTvLis.containsKey(_tvName)) {
    return foreignTvLis[_tvName]?["tvg-logo"].toString() ?? "";
  }
  return "";
}

void setTvChannel(String tvName, int index) {
  _curPlayChannelMap[index] = tvName;
  _index = index;
}

String getDefaultSource(int index) {
  String defaultSource = (chineseTvLis.entries.first.value["tvg-url"] as Set).first;
  switch (index) {
    case 0:
      defaultSource = (chineseTvLis.entries.first.value["tvg-url"] as Set).first;
      break;
    case 1:
      defaultSource = (foreignTvLis.entries.first.value["tvg-url"] as Set).first;
      break;
    case 2:
      defaultSource = (getFeaturedItemByKey(featuredTvLis.first)?["tvg-url"] as Set).first;
      break;
  }
  return defaultSource;
}

Set getSourceSet(int tabIndex, int listIndex) {
  switch (tabIndex) {
    case 0:
      return chineseTvLis.values.elementAt(listIndex)["tvg-url"] as Set;
    case 1:
      return foreignTvLis.values.elementAt(listIndex)["tvg-url"] as Set;
    case 2:
      return getFeaturedItemByKey(featuredTvLis[listIndex])?["tvg-url"] as Set;
    default:
      return chineseTvLis.values.elementAt(listIndex)["tvg-url"] as Set;
  }
}

String getTvName() {
  String defaultSource = chineseTvLis.keys.first;
  switch (_index) {
    case 0:
      defaultSource = chineseTvLis.keys.first;
      break;
    case 1:
      defaultSource = foreignTvLis.keys.first;
      break;
    case 2:
      defaultSource = featuredTvLis.first;
      break;
  }
  return _curPlayChannelMap[_index] ?? defaultSource;
}

void setLiveSource(String key, String? value) {
  liveSource[key] = value;
}

String getTvChannel() {
  String defaultSource = (chineseTvLis.entries.first.value["tvg-url"] as Set).first;
  switch (_index) {
    case 0:
      defaultSource = (chineseTvLis.entries.first.value["tvg-url"] as Set).first;
      break;
    case 1:
      defaultSource = (foreignTvLis.entries.first.value["tvg-url"] as Set).first;
      break;
    case 2:
      defaultSource = (getFeaturedItemByKey(featuredTvLis.first)?["tvg-url"] as Set).first;
      break;
  }

  String tvName = _curPlayChannelMap[_index] ?? "";
  if (liveSource.containsKey(tvName)) {
    return liveSource[tvName];
  } else if (chineseTvLis.containsKey(tvName)) {
    return (chineseTvLis[tvName]!["tvg-url"] as Set).first;
  } else if (foreignTvLis.containsKey(tvName)) {
    return (foreignTvLis[tvName]!["tvg-url"] as Set).first;
  }
  return defaultSource;
}

class Position {
  int tabIndex = 0;
  int listIndex = 0;

  Position(int _tabIndex, int _listIndex) {
    logger.e("www1 == Position ==");
    tabIndex = _tabIndex;
    listIndex = _listIndex;
  }
}

final liveSource = {};

String getLiveSource(String key) {
  if (liveSource.containsKey(key)) {
    return liveSource[key];
  } else {
    return getSourceByKey(key) ?? "";
  }
}

String? getSourceByKey(String tvName) {
  if (liveSource.containsKey(tvName)) {
    return liveSource[tvName];
  } else if (chineseTvLis.containsKey(tvName)) {
    return (chineseTvLis[tvName]?["tvg-url"] as Set).first;
  } else if (foreignTvLis.containsKey(tvName)) {
    return (foreignTvLis[tvName]?["tvg-url"] as Set).first;
  }
  return null;
}

String getBeanByIndex(int tabIndex, int listIndex) {
  logger.w("liveSource ==> $tabIndex : $listIndex");

  switch (tabIndex) {
    case 0:
      return chineseTvLis.keys.elementAt(listIndex);
    case 1:
      return foreignTvLis.keys.elementAt(listIndex);
    case 2:
      return featuredTvLis.elementAt(listIndex);
    default:
      return chineseTvLis.keys.elementAt(listIndex);
  }
}
