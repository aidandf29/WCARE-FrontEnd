import 'package:json_annotation/json_annotation.dart';
part 'profile_model.g.dart';

@JsonSerializable()
class ProfileModel {
  @JsonKey(name: "name")
  final String name;

  @JsonKey(name: "email")
  final String email;

  @JsonKey(name: "phone")
  final String phone;

  @JsonKey(name: "address")
  final String address;

  @JsonKey(name: "id")
  final String id;

  ProfileModel({
    required this.name,
    required this.email,
    required this.phone,
    required this.address,
    required this.id,
  });

  factory ProfileModel.fromJson(Map<String, dynamic> json) {
    return ProfileModel(
        name: json["name"],
        email: json["email"],
        phone: json["phone"],
        address: json["address"],
        id: json["id"]);
  }
}
