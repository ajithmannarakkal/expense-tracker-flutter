import 'package:json_annotation/json_annotation.dart';

part 'add_transaction_response_model.g.dart';

@JsonSerializable()
class AddTransactionResponse {
  const AddTransactionResponse({
    this.success,
    this.message,
  });

  @JsonKey(name: 'success')
  final bool? success;

  @JsonKey(name: 'message')
  final String? message;

  factory AddTransactionResponse.fromJson(Map<String, dynamic> json) =>
      _$AddTransactionResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AddTransactionResponseToJson(this);
}