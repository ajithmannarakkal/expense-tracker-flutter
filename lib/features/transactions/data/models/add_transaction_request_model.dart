import 'package:json_annotation/json_annotation.dart';

part 'add_transaction_request_model.g.dart';

@JsonSerializable(createFactory: false)
class AddTransactionRequest {
  const AddTransactionRequest({
    required this.amount,
    required this.date,
    required this.remark,
  });

  Map<String, dynamic> toJson() => _$AddTransactionRequestToJson(this);

  @JsonKey(name: 'amount')
  final double amount;
  @JsonKey(name: 'date')
  final String date;
  @JsonKey(name: 'remarks')
  final String remark;
}