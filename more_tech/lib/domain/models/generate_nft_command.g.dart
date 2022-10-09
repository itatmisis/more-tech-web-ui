// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generate_nft_command.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GenerateNftCommand _$GenerateNftCommandFromJson(Map<String, dynamic> json) {
  return GenerateNftCommand(
    url: json['url'] as String,
    count: json['count'] as int,
    price: json['price'] as num,
    userId: json['userId'] as int,
  );
}

Map<String, dynamic> _$GenerateNftCommandToJson(GenerateNftCommand instance) =>
    <String, dynamic>{
      'url': instance.url,
      'count': instance.count,
      'price': instance.price,
      'userId': instance.userId,
    };
