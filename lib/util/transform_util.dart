import 'package:json_string/json_string.dart';

String toJsonString(List<String> _list) {
  return JsonString.encodePrimitiveList(_list).source;
}

List<String> toStringList(String _list) {
  return JsonString(_list).decodeAsPrimitiveList<String>();
}
