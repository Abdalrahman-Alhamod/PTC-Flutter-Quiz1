import 'package:json_annotation/json_annotation.dart';
part 'user.g.dart';

@JsonSerializable()
class User {
  final int id;
  @JsonKey(name: "first_name")
  final String? firstName;
  @JsonKey(name: "last_name")
  final String? lastName;
  final String? about;
  final String? image;
  final String? email;

  User(this.email, {
    required this.firstName,
    required this.lastName,
    required this.about,
    required this.image,
    required this.id,
  });
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);

  get fullname {
    return "$firstName $lastName";
  }
}
