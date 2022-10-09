// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_nfts_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetNftsResponse _$GetNftsResponseFromJson(Map<String, dynamic> json) {
  return GetNftsResponse(
    tokens: (json['tokens'] as List<dynamic>)
        .map((e) => e as Map<String, dynamic>)
        .toList(),
  );
}

Map<String, dynamic> _$GetNftsResponseToJson(GetNftsResponse instance) =>
    <String, dynamic>{
      'tokens': instance.tokens,
    };
