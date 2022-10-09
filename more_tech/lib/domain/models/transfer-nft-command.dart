import 'package:json_annotation/json_annotation.dart';

part 'transfer-nft-command.g.dart';

@JsonSerializable()
class TransferNftCommand {
  final int fromUser;
  final int toUser;
  final int tokenId;

  TransferNftCommand({
    required this.fromUser,
    required this.toUser,
    required this.tokenId,
  });

  factory TransferNftCommand.fromJson(Map<String, dynamic> json) =>
      _$TransferNftCommandFromJson(json);

  Map<String, dynamic> toJson() => _$TransferNftCommandToJson(this);
}
