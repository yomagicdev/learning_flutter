import 'package:flutter/material.dart';
import 'package:learning_flutter/models/expense.dart';

class ExpenseItem extends StatelessWidget {
  ExpenseItem({super.key, required this.expense, required this.onTap});

  final Expense expense;
  void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.purple[100],
      child: ListTile(
        title: Text(expense.title),
        subtitle: Text(expense.formattedDate),
        trailing: Text(expense.amount.toStringAsFixed(2)),
        leading: Icon(categoryIcons[expense.category]),
        onTap: () => onTap(),
      ),
    );
  }
}
