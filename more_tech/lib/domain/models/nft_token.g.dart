// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nft_token.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NftToken _$NftTokenFromJson(Map<String, dynamic> json) {
  return NftToken(
    url: json['url'] as String,
    tokenId: json['tokenId'] as int,
    price: json['price'] as num,
  );
}

Map<String, dynamic> _$NftTokenToJson(NftToken instance) => <String, dynamic>{
      'url': instance.url,
      'tokenId': instance.tokenId,
      'price': instance.price,
    };
