import 'package:json_annotation/json_annotation.dart';

part 'get_user_response.g.dart';

@JsonSerializable()
class GetUserResponse {
  final Map<String, dynamic> user;

  GetUserResponse({required this.user});

  factory GetUserResponse.fromJson(Map<String, dynamic> json) =>
      _$GetUserResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetUserResponseToJson(this);
}
