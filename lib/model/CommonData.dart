import 'package:provider/provider.dart';

import 'package:flutter/material.dart';

class CommonData with ChangeNotifier {
  String _tvChannel = "";

  void setTvChannel(String channel) {
    _tvChannel = channel;
    notifyListeners();
  }

  String getTvChannel() {
    return _tvChannel;
  }
}
