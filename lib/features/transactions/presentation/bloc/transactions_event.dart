part of 'transactions_bloc.dart';

@freezed
class TransactionEvent with _$TransactionEvent {
  const factory TransactionEvent.getTransactions() = _GetTransactions;

  const factory TransactionEvent.addTransaction(
      AddTransactionRequest request,
      ) = _AddTransaction;
}