import 'package:dartz/dartz.dart';

import '../../../../core/network/error/error_response.dart';
import '../models/add_transaction_request_model.dart';
import '../models/add_transaction_response_model.dart';
import '../models/transaction_model.dart';

abstract class TransactionRepository {
  Future<Either<ErrorResponse, GetTransactionsResponse>> getTransactions();

  Future<Either<ErrorResponse, AddTransactionResponse>> createTransaction(
    AddTransactionRequest request,
  );
}
