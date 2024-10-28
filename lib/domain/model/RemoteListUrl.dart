import 'package:json_string/json_string.dart';

class RemoteListUrl {
  String url;
  String name;
  String status;

  RemoteListUrl({
    required this.url,
    required this.name,
    required this.status,
  });

  factory RemoteListUrl.fromMap(value) {
    return RemoteListUrl(
      url: value["url"],
      name: value["name"],
      status: "",
    );
  }
}

extension Extension on List<dynamic> {
  List<RemoteListUrl> toUrlList() {
    return map((value) {
      return RemoteListUrl.fromMap(value);
    }).toList();
  }
}
