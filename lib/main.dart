import 'package:flutter/material.dart';
import 'package:learning_flutter/start_screen.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.purple, Colors.blue],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight)),
        child: const StartScreen(),
      ),
    ),
  ));
}
