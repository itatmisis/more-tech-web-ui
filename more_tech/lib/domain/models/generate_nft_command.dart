import 'package:json_annotation/json_annotation.dart';

part 'generate_nft_command.g.dart';

@JsonSerializable()
class GenerateNftCommand {
  final String url;
  final int count;
  final num price;
  final int userId;

  GenerateNftCommand(
      {required this.url,
      required this.count,
      required this.price,
      required this.userId});

  factory GenerateNftCommand.fromJson(Map<String, dynamic> json) =>
      _$GenerateNftCommandFromJson(json);

  Map<String, dynamic> toJson() => _$GenerateNftCommandToJson(this);
}
