import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../data/repositories/transaction_repository.dart';
import '../../data/models/add_transaction_request_model.dart';
import '../../data/models/add_transaction_response_model.dart';
import '../../data/models/transaction_model.dart';


part 'transactions_event.dart';
part 'transactions_state.dart';
part 'transactions_bloc.freezed.dart';

@injectable
class TransactionBloc extends Bloc<TransactionEvent, TransactionState> {
  final TransactionRepository _repository;

  TransactionBloc(this._repository)
      : super(TransactionState.initial()) {
    on<_GetTransactions>(_onGetTransactions);
    on<_AddTransaction>(_onAddTransaction);
  }

  Future<void> _onGetTransactions(
      _GetTransactions event,
      Emitter<TransactionState> emit,
      ) async {
    emit(
      state.copyWith(
        status: TransactionStatus.loading,
        errorMessage: null,
        validationMessage: null,
      ),
    );

    final result = await _repository.getTransactions();

    result.fold(
          (error) {
        emit(
          state.copyWith(
            status: TransactionStatus.failure,
            errorMessage: error.description,
          ),
        );
      },
          (response) {
        emit(
          state.copyWith(
            status: response.success == true
                ? TransactionStatus.success
                : TransactionStatus.failure,
            transactions: response.data ?? [],
            transactionsResponse: response,
            errorMessage: response.success == true
                ? null
                : response.message ?? 'Failed to fetch transactions',
          ),
        );
      },
    );
  }

  Future<void> _onAddTransaction(
      _AddTransaction event,
      Emitter<TransactionState> emit,
      ) async {
    final request = event.request;

    if (request.amount <= 0) {
      emit(
        state.copyWith(
          status: TransactionStatus.validation,
          validationMessage: 'Amount must be greater than zero',
        ),
      );
      return;
    }

    if (request.date.trim().isEmpty) {
      emit(
        state.copyWith(
          status: TransactionStatus.validation,
          validationMessage: 'Please select a date',
        ),
      );
      return;
    }

    if (request.remark.trim().isEmpty) {
      emit(
        state.copyWith(
          status: TransactionStatus.validation,
          validationMessage: 'Please enter a remark',
        ),
      );
      return;
    }

    emit(
      state.copyWith(
        status: TransactionStatus.loading,
        errorMessage: null,
        validationMessage: null,
        successMessage: null,
      ),
    );

    final result = await _repository.createTransaction(request);

    result.fold(
          (error) {
        emit(
          state.copyWith(
            status: TransactionStatus.failure,
            errorMessage: error.description,
          ),
        );
      },
          (response) {
        emit(
          state.copyWith(
            status: response.success == true
                ? TransactionStatus.addSuccess
                : TransactionStatus.failure,
            addTransactionResponse: response,
            successMessage:
            response.success == true ? response.message : null,
            errorMessage: response.success == true
                ? null
                : response.message ?? 'Failed to add transaction',
          ),
        );

        if (response.success == true) {
          add(const TransactionEvent.getTransactions());
        }
      },
    );
  }
}