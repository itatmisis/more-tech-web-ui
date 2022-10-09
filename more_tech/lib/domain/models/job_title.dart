import 'package:json_annotation/json_annotation.dart';

part 'job_title.g.dart';

@JsonSerializable()
class JobTitle {
  final int id;
  final String name;
  final String description;

  JobTitle({required this.id, required this.name, required this.description});

  factory JobTitle.fromJson(Map<String, dynamic> json) =>
      _$JobTitleFromJson(json);

  Map<String, dynamic> toJson() => _$JobTitleToJson(this);
}
