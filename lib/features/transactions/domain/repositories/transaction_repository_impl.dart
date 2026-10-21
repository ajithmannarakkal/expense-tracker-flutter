import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/network/error/error_response.dart';
import '../../data/datasources/transaction_datasources.dart';
import '../../data/models/add_transaction_request_model.dart';
import '../../data/models/add_transaction_response_model.dart';
import '../../data/models/transaction_model.dart';
import '../../data/repositories/transaction_repository.dart';

@LazySingleton(as: TransactionRepository)
class TransactionRepositoryImpl implements TransactionRepository {
  final TransactionRemoteDataSource remoteDataSource;

  TransactionRepositoryImpl(this.remoteDataSource);

  @override
  Future<Either<ErrorResponse, GetTransactionsResponse>>
  getTransactions() async {
    final result = await remoteDataSource.getTransactions();

    return result.fold(
          (error) => Left(
        ErrorResponse(
          description: error.description,
          statusCode: error.statusCode,
          remarks: error.remarks,
        ),
      ),
          (response) => Right(response),
    );
  }

  @override
  Future<Either<ErrorResponse, AddTransactionResponse>> createTransaction(
      AddTransactionRequest request,
  ) async {
    final result = await remoteDataSource.createTransaction(request);

    return result.fold(
      (error) => Left(
        ErrorResponse(
          description: error.description,
          statusCode: error.statusCode,
          remarks: error.remarks,
        ),
      ),
      (response) => Right(response),
    );
  }
}
