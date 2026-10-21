// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetTransactionsResponse _$GetTransactionsResponseFromJson(
  Map<String, dynamic> json,
) => GetTransactionsResponse(
  success: json['Success'] as bool?,
  message: json['Message'] as String?,
  data: (json['Data'] as List<dynamic>?)
      ?.map((e) => TransactionDetails.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$GetTransactionsResponseToJson(
  GetTransactionsResponse instance,
) => <String, dynamic>{
  'Success': instance.success,
  'Message': instance.message,
  'Data': instance.data,
};

TransactionDetails _$TransactionDetailsFromJson(Map<String, dynamic> json) =>
    TransactionDetails(
      id: json['Id'] as String?,
      amount: (json['Amount'] as num?)?.toDouble(),
      date: json['Date'] as String?,
      remark: json['Remark'] as String?,
    );

Map<String, dynamic> _$TransactionDetailsToJson(TransactionDetails instance) =>
    <String, dynamic>{
      'Id': instance.id,
      'Amount': instance.amount,
      'Date': instance.date,
      'Remark': instance.remark,
    };
