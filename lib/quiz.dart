import 'package:flutter/material.dart';
import 'package:learning_flutter/data/questions.dart';
import 'package:learning_flutter/questions_screen.dart';
import 'package:learning_flutter/results_screen.dart';
import 'package:learning_flutter/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void chooseAnswer(String answer) {
      selectedAnswers.add(answer);

      if (selectedAnswers.length == questions.length) {
        setState(() {
          activeScreen = 'results-screen';
        });
      }
  }

  void resetQuiz() {
    setState(() {
      selectedAnswers = [];
      activeScreen = 'start-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == 'results-screen') {
      screenWidget = ResultsScreen(
          chosenAnswers: selectedAnswers,
          onRestartQuiz: resetQuiz,
      );
    }

    if (activeScreen == 'questions-screen') {
      screenWidget = QuestionsScreen(
          onSelectAnswer: chooseAnswer,
      );
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.purple, Colors.blue],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight)),
          child: screenWidget,
        ),
      ),
    );
  }
}
