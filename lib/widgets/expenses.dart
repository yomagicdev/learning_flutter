import 'package:flutter/material.dart';
import 'package:learning_flutter/models/expense.dart';
import 'package:learning_flutter/widgets/expenses_list/NewExpense.dart';
import 'package:learning_flutter/widgets/expenses_list/expenses_list.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> registeredExpenses = [
    Expense(
        title: 'Flutter course',
        amount: 19.99,
        date: DateTime.now(),
        category: Category.work),
    Expense(
        title: 'Cinema',
        amount: 15.69,
        date: DateTime.now(),
        category: Category.leisure),
  ];

  void _openAddExpenseForm() {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        builder: (ctx) {
          return NewExpense(onAddExpense: (expense) {
            _addExpense(expense);
          });
        });
  }

  void _viewExpenseDetails() {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        builder: (ctx) {
          return const Center(
            child: Text('Expense Details'),
          );
        });
  }

  void _addExpense(Expense expense) {
    // Add the expense to the list of expenses
    setState(() {
      registeredExpenses.add(expense);
    });
  }

  void _removeExpense(Expense expense) {
    // Remove the expense from the list of expenses
    final expenseIndex = registeredExpenses.indexOf(expense);
    setState(() {
      registeredExpenses.remove(expense);
    });
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
          content: const Text('Expense removed'),
          duration: const Duration(seconds: 2),
        action: SnackBarAction(
            label: 'Undo',
            onPressed: () {
              setState(() {
                registeredExpenses.insert(expenseIndex, expense);
              });
            },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expense Tracker'),
        actions: [
          IconButton(
              onPressed: _openAddExpenseForm, icon: const Icon(Icons.add))
        ],
      ),
      body: Column(
        children: [
          const Text('The chart'),
          const Text('The List of transactions'),
          Expanded(
              child: ExpensesList(
            expenses: registeredExpenses,
            viewExpenseDetails: _viewExpenseDetails,
                onRemoveExpense: _removeExpense,
          )),
        ],
      ),
    );
  }
}
