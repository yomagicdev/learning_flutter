import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/quiz-logo.png', width: 200),
          const SizedBox(height: 80),
          const Text('Learn Flutter the fun way!',
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
              )),
          const SizedBox(height: 30),
          OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.blue,
                  padding: const EdgeInsets.symmetric(
                      vertical: 15, horizontal: 30)
              ),
              child: const Text(
                  'Start Quiz',
                  style: TextStyle(color: Colors.white)))
        ],
      ),
    );
  }
}
