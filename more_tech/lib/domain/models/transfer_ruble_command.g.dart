// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transfer_ruble_command.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransferRubleCommand _$TransferRubleCommandFromJson(Map<String, dynamic> json) {
  return TransferRubleCommand(
    fromUser: json['fromUser'] as int,
    toUser: json['toUser'] as int,
    amount: json['amount'] as num,
  );
}

Map<String, dynamic> _$TransferRubleCommandToJson(
        TransferRubleCommand instance) =>
    <String, dynamic>{
      'fromUser': instance.fromUser,
      'toUser': instance.toUser,
      'amount': instance.amount,
    };
