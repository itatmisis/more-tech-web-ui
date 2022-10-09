import 'package:json_annotation/json_annotation.dart';

part 'new_user.g.dart';

@JsonSerializable()
class NewUser {
  final int id;
  final String nickname;
  final Map<String, String> role;
  final String profilePicUrl;
  final String firstName;
  final String secondName;
  final String middleName;
  final Map<String, dynamic> jobTitle;
  final int employerId;
  final int points;
  final int levels;

  NewUser({
    required this.id,
    required this.nickname,
    required this.role,
    required this.profilePicUrl,
    required this.firstName,
    required this.secondName,
    required this.middleName,
    required this.jobTitle,
    required this.employerId,
    required this.points,
    required this.levels,
  });

  factory NewUser.fromJson(Map<String, dynamic> json) =>
      _$NewUserFromJson(json);

  Map<String, dynamic> toJson() => _$NewUserToJson(this);
}
