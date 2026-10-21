part of 'transactions_bloc.dart';

enum TransactionStatus {
  initial,
  loading,
  success,
  failure,
  validation,
  addSuccess,
}

@freezed
abstract class TransactionState with _$TransactionState {
  const factory TransactionState({
    @Default(TransactionStatus.initial)
    TransactionStatus status,

    @Default(<TransactionDetails>[])
    List<TransactionDetails> transactions,

    GetTransactionsResponse? transactionsResponse,
    AddTransactionResponse? addTransactionResponse,
    String? successMessage,
    String? errorMessage,
    String? validationMessage,
  }) = _TransactionState;

  factory TransactionState.initial() => const TransactionState();
}