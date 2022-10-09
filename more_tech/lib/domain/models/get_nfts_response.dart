import 'package:json_annotation/json_annotation.dart';

part 'get_nfts_response.g.dart';

@JsonSerializable()
class GetNftsResponse {
  final List<Map<String, dynamic>> tokens;

  GetNftsResponse({required this.tokens});

  factory GetNftsResponse.fromJson(Map<String, dynamic> json) =>
      _$GetNftsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetNftsResponseToJson(this);
}
