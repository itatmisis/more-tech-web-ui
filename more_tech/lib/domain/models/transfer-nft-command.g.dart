// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transfer-nft-command.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransferNftCommand _$TransferNftCommandFromJson(Map<String, dynamic> json) {
  return TransferNftCommand(
    fromUser: json['fromUser'] as int,
    toUser: json['toUser'] as int,
    tokenId: json['tokenId'] as int,
  );
}

Map<String, dynamic> _$TransferNftCommandToJson(TransferNftCommand instance) =>
    <String, dynamic>{
      'fromUser': instance.fromUser,
      'toUser': instance.toUser,
      'tokenId': instance.tokenId,
    };
