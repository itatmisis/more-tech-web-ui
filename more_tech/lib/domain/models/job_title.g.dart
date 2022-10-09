// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_title.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JobTitle _$JobTitleFromJson(Map<String, dynamic> json) {
  return JobTitle(
    id: json['id'] as int,
    name: json['name'] as String,
    description: json['description'] as String,
  );
}

Map<String, dynamic> _$JobTitleToJson(JobTitle instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
    };
