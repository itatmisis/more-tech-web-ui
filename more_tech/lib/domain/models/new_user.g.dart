// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewUser _$NewUserFromJson(Map<String, dynamic> json) {
  return NewUser(
    id: json['id'] as int,
    nickname: json['nickname'] as String,
    role: Map<String, String>.from(json['role'] as Map),
    profilePicUrl: json['profilePicUrl'] as String,
    firstName: json['firstName'] as String,
    secondName: json['secondName'] as String,
    middleName: json['middleName'] as String,
    jobTitle: json['jobTitle'] as Map<String, dynamic>,
    employerId: json['employerId'] as int,
    points: json['points'] as int,
    levels: json['levels'] as int,
  );
}

Map<String, dynamic> _$NewUserToJson(NewUser instance) => <String, dynamic>{
      'id': instance.id,
      'nickname': instance.nickname,
      'role': instance.role,
      'profilePicUrl': instance.profilePicUrl,
      'firstName': instance.firstName,
      'secondName': instance.secondName,
      'middleName': instance.middleName,
      'jobTitle': instance.jobTitle,
      'employerId': instance.employerId,
      'points': instance.points,
      'levels': instance.levels,
    };
