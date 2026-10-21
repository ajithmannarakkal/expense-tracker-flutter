import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/network/api_endpoints.dart';
import '../../../../core/network/api_repository.dart';
import '../../../../core/network/dio_client.dart';
import '../../../../core/network/error/error_response.dart';
import '../models/add_transaction_request_model.dart';
import '../models/add_transaction_response_model.dart';
import '../models/transaction_model.dart';

@lazySingleton
class TransactionRemoteDataSource {
  TransactionRemoteDataSource(this._apiRepository, this._client);

  final ApiRepository _apiRepository;
  final DioClient _client;
  Future<Either<ErrorResponse, GetTransactionsResponse>>
  getTransactions() async {
    return _apiRepository.callApi<GetTransactionsResponse>(
          (payload) => _client.dio.get(ApiEndpoints.transactions),
      null,
          (json) => GetTransactionsResponse.fromJson(
        json as Map<String, dynamic>,
      ),
    );
  }

  Future<Either<ErrorResponse, AddTransactionResponse>> createTransaction(
    AddTransactionRequest request,
  ) async {
    return _apiRepository.callApi<AddTransactionResponse>(
      (payload) =>
          _client.dio.post(ApiEndpoints.createTransaction, data: payload),
      request.toJson(),
      (json) => AddTransactionResponse.fromJson(json as Map<String, dynamic>),
    );
  }
}
