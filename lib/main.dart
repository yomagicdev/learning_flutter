import 'package:flutter/material.dart';

import 'widgets/expenses.dart';

void main() {
  runApp(
    const MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple,
        accentColor: Colors.amber,
      ),
      home: Expenses()
    ),
  );
}