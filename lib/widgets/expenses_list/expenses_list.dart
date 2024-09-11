import 'package:flutter/material.dart';
import 'package:learning_flutter/models/expense.dart';
import 'package:learning_flutter/widgets/expenses_list/expense_item.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({
    super.key,
    required this.expenses,
    required this.viewExpenseDetails,
    required this.onRemoveExpense,
  });

  final List<Expense> expenses;
  final void Function() viewExpenseDetails;
  final void Function(Expense expense) onRemoveExpense;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (context, index) {
        final expense = expenses[index];
        return Dismissible(
            key: ValueKey(expenses[index]),
            onDismissed: (direction) {
              onRemoveExpense(expenses[index]);
            },
            child: ExpenseItem(
              expense: expense,
              onTap: viewExpenseDetails,
            ));
      },
    );
  }
}
