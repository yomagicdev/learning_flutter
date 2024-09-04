import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 200,
            color: const Color.fromARGB(150, 255, 255, 255),
          ),
          const SizedBox(height: 80),
          const Text('Learn Flutter the fun way!',
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
              )),
          const SizedBox(height: 30),
          OutlinedButton.icon(
              onPressed: () {
                startQuiz();
              },
              style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.blue,
                  padding: const EdgeInsets.symmetric(
                      vertical: 15, horizontal: 30)
              ),
              icon: const Icon(Icons.play_arrow, color: Colors.white),
              label: const Text(
                  'Start Quiz',
                  style: TextStyle(color: Colors.white)))
        ],
      ),
    ));
  }
}
