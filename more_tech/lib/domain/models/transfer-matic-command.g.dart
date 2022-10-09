// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transfer-matic-command.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransferMaticCommand _$TransferMaticCommandFromJson(Map<String, dynamic> json) {
  return TransferMaticCommand(
    fromUser: json['fromUser'] as int,
    toUser: json['toUser'] as int,
    amount: json['amount'] as num,
  );
}

Map<String, dynamic> _$TransferMaticCommandToJson(
        TransferMaticCommand instance) =>
    <String, dynamic>{
      'fromUser': instance.fromUser,
      'toUser': instance.toUser,
      'amount': instance.amount,
    };
