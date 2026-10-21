import 'package:json_annotation/json_annotation.dart';

part 'transaction_model.g.dart';

@JsonSerializable()
class GetTransactionsResponse {
  const GetTransactionsResponse({
    this.success,
    this.message,
    this.data,
  });

  @JsonKey(name: 'Success')
  final bool? success;

  @JsonKey(name: 'Message')
  final String? message;

  @JsonKey(name: 'Data')
  final List<TransactionDetails>? data;

  factory GetTransactionsResponse.fromJson(Map<String, dynamic> json) =>
      _$GetTransactionsResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$GetTransactionsResponseToJson(this);
}

@JsonSerializable()
class TransactionDetails {
  const TransactionDetails({
    this.id,
    this.amount,
    this.date,
    this.remark,
  });

  @JsonKey(name: 'Id')
  final String? id;

  @JsonKey(name: 'Amount')
  final double? amount;

  @JsonKey(name: 'Date')
  final String? date;

  @JsonKey(name: 'Remark')
  final String? remark;

  factory TransactionDetails.fromJson(Map<String, dynamic> json) =>
      _$TransactionDetailsFromJson(json);

  Map<String, dynamic> toJson() =>
      _$TransactionDetailsToJson(this);
}