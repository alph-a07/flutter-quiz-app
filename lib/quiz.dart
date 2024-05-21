import 'package:flutter/material.dart';
import 'package:quiz_app/data/quiz_questions.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/results_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  // Widget? activeScreen;

  // // Initializes app with the StartScreen
  // @override
  // void initState() {
  //   activeScreen = StartScreen(switchScreen);
  //   super.initState();
  // }

  // // Replaces the active screen to QuestionsScreen from StartScreen
  // void switchScreen() {
  //   setState(() {
  //     activeScreen = QuestionsScreen();
  //   });
  // }

  var activeScreen = 'start-screen';
  List<String> selectedAnswers = [];

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void resetQuiz() {
    setState(() {
      selectedAnswers = [];
      activeScreen = 'start-screen';
    });
  }

  void selectAns(String ans) {
    selectedAnswers.add(ans);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'results-screen';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    var currentScreen =
        activeScreen == 'start-screen' ? StartScreen(switchScreen) : QuestionsScreen(selectAns);

    if (activeScreen == 'results-screen') {
      currentScreen = ResultsScreen(
        chosenAnswers: selectedAnswers,
        resetQuiz: resetQuiz,
      );
    }

    return MaterialApp(
      home: Scaffold(
          body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.green.shade900,
              Colors.lightGreen.shade800,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: currentScreen,
      )),
    );
  }
}
