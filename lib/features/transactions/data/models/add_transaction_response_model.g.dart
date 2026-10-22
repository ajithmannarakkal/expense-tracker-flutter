// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_transaction_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddTransactionResponse _$AddTransactionResponseFromJson(
  Map<String, dynamic> json,
) => AddTransactionResponse(
  success: json['success'] as bool?,
  message: json['message'] as String?,
);

Map<String, dynamic> _$AddTransactionResponseToJson(
  AddTransactionResponse instance,
) => <String, dynamic>{
  'success': instance.success,
  'message': instance.message,
};
