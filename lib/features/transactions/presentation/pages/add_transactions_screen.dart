import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/widgets/common_appbar.dart';
import '../../../../core/widgets/common_elevated_button.dart';
import '../../../../core/widgets/common_textfield.dart';
import '../../data/models/add_transaction_request_model.dart';
import '../bloc/transactions_bloc.dart';

class AddTransactionsScreen extends StatefulWidget {
  const AddTransactionsScreen({super.key});

  @override
  State<AddTransactionsScreen> createState() => _AddTransactionsScreenState();
}

class _AddTransactionsScreenState extends State<AddTransactionsScreen> {
  final _amountController = TextEditingController();
  final _dateController = TextEditingController();
  final _remarkController = TextEditingController();

  late final TransactionBloc _transactionBloc;

  @override
  void initState() {
    super.initState();
    // Assuming GetIt is configured to provide TransactionBloc
    _transactionBloc = GetIt.I<TransactionBloc>();
  }

  @override
  void dispose() {
    _amountController.dispose();
    _dateController.dispose();
    _remarkController.dispose();
    super.dispose();
  }

  void _onAddTransaction() {
    final amountText = _amountController.text;
    final dateText = _dateController.text;
    final remarkText = _remarkController.text;

    final double amount = double.tryParse(amountText) ?? 0.0;

    final request = AddTransactionRequest(
      amount: double.parse(amount.toString()),
      date: dateText.toString(),
      remark: remarkText,
    );

    _transactionBloc.add(TransactionEvent.addTransaction(request));
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _transactionBloc,
      child: Scaffold(
        appBar: CommonAppbar(
          title: 'Add Transaction',
          onTap: () {
            if (context.canPop()) {
              context.pop();
            }
          },
        ),
        body: BlocConsumer<TransactionBloc, TransactionState>(
          listener: (context, state) {
            if (state.status == TransactionStatus.validation) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(state.validationMessage ?? 'Validation error'),
                ),
              );
            } else if (state.status == TransactionStatus.failure) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    state.errorMessage ?? 'Failed to add transaction',
                  ),
                ),
              );
            } else if (state.status == TransactionStatus.addSuccess) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    state.successMessage ?? 'Transaction added successfully',
                  ),
                ),
              );
              if (context.canPop()) {
                context.pop();
              }
            }
          },
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CommonTextField(
                      controller: _amountController,
                      labelText: 'Amount',
                      hintText: 'Enter amount',
                      prefixIcon: Icons.attach_money,
                      isMandatory: true,
                    ),
                    const SizedBox(height: 16),
                    CommonTextField(
                      controller: _dateController,
                      labelText: 'Date',
                      hintText: 'YYYY-MM-DD',
                      prefixIcon: Icons.calendar_today,
                      isMandatory: true,
                    ),
                    const SizedBox(height: 16),
                    CommonTextField(
                      controller: _remarkController,
                      labelText: 'Remark',
                      hintText: 'Enter remark',
                      prefixIcon: Icons.notes,
                      isMandatory: true,
                    ),
                    const SizedBox(height: 32),
                    if (state.status == TransactionStatus.loading)
                      const Center(child: CircularProgressIndicator())
                    else
                      CommonElevatedButton(
                        text: 'Add Transaction',
                        onTap: _onAddTransaction,
                      ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
