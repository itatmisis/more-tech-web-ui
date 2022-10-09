// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_balance_wallet_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetBalanceWalletResponse _$GetBalanceWalletResponseFromJson(
    Map<String, dynamic> json) {
  return GetBalanceWalletResponse(
    maticAmount: json['maticAmount'] as num,
    coinsAmount: json['coinsAmount'] as num,
  );
}

Map<String, dynamic> _$GetBalanceWalletResponseToJson(
        GetBalanceWalletResponse instance) =>
    <String, dynamic>{
      'maticAmount': instance.maticAmount,
      'coinsAmount': instance.coinsAmount,
    };
