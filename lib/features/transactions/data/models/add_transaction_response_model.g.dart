// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_transaction_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddTransactionResponse _$AddTransactionResponseFromJson(
  Map<String, dynamic> json,
) => AddTransactionResponse(
  success: json['Success'] as bool?,
  message: json['Message'] as String?,
);

Map<String, dynamic> _$AddTransactionResponseToJson(
  AddTransactionResponse instance,
) => <String, dynamic>{
  'Success': instance.success,
  'Message': instance.message,
};
