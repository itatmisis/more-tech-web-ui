import 'package:json_annotation/json_annotation.dart';

part 'transfer_ruble_command.g.dart';

@JsonSerializable()
class TransferRubleCommand {
  final int fromUser;
  final int toUser;
  final num amount;

  TransferRubleCommand(
      {required this.fromUser, required this.toUser, required this.amount});

  factory TransferRubleCommand.fromJson(Map<String, dynamic> json) =>
      _$TransferRubleCommandFromJson(json);

  Map<String, dynamic> toJson() => _$TransferRubleCommandToJson(this);
}
