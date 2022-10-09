import 'package:json_annotation/json_annotation.dart';

part 'nft_token.g.dart';

@JsonSerializable()
class NftToken {
  final String url;
  final int tokenId;
  final num price;

  NftToken({
    required this.url,
    required this.tokenId,
    required this.price,
  });

  factory NftToken.fromJson(Map<String, dynamic> json) =>
      _$NftTokenFromJson(json);

  Map<String, dynamic> toJson() => _$NftTokenToJson(this);
}
