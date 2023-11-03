import 'package:json_annotation/json_annotation.dart';

// user.g.dart 将在我们运行生成命令后自动生成
part 'user.g.dart';

///这个标注是告诉生成器，这个类是需要生成Model类的
@JsonSerializable()
class User {
  User(this.tvgId, this.tvgLogo, this.groupTitle, this.tvgUrl);

  String? tvgId = "";
  // String tvgCountry = "";
  // String tvgLanguage = "";
  String? tvgLogo = "";
  String? groupTitle = "";
  Set<String> tvgUrl = {};

  //不同的类使用不同的mixin即可
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
