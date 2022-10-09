import 'package:json_annotation/json_annotation.dart';

part 'transfer-matic-command.g.dart';

@JsonSerializable()
class TransferMaticCommand {
  final int fromUser;
  final int toUser;
  final num amount;

  TransferMaticCommand({
    required this.fromUser,
    required this.toUser,
    required this.amount,
  });

  factory TransferMaticCommand.fromJson(Map<String, dynamic> json) =>
      _$TransferMaticCommandFromJson(json);

  Map<String, dynamic> toJson() => _$TransferMaticCommandToJson(this);
}
