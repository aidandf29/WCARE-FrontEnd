// ignore: file_names
// ignore_for_file: file_names

import 'package:json_annotation/json_annotation.dart';
part 'model_login.g.dart';

@JsonSerializable()
class ModelLogin {
  @JsonKey(name: "id")
  final String id;
  ModelLogin({required this.id});

  factory ModelLogin.fromJson(Map<String, dynamic> json) {
    return ModelLogin(
      id: json["id"],
    );
  }
}
