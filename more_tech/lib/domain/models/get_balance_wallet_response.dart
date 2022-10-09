import 'package:json_annotation/json_annotation.dart';

part 'get_balance_wallet_response.g.dart';

@JsonSerializable()
class GetBalanceWalletResponse {
  final num maticAmount;
  final num coinsAmount;

  GetBalanceWalletResponse(
      {required this.maticAmount, required this.coinsAmount});

  factory GetBalanceWalletResponse.fromJson(Map<String, dynamic> json) =>
      _$GetBalanceWalletResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetBalanceWalletResponseToJson(this);
}
