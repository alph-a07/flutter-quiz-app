import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/data/quiz_questions.dart';
import 'package:quiz_app/quiz_summary/quiz_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({required this.chosenAnswers, required this.resetQuiz, super.key});

  final List<String> chosenAnswers;
  final void Function() resetQuiz;

  List<Map<String, Object>> getQuizSummary() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'index': i,
        'que': questions[i].que,
        'correct_ans': questions[i].answers[0],
        'chosen_ans': chosenAnswers[i],
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getQuizSummary();
    final numTotalQue = questions.length;
    final numCorrectQue = summaryData.where((data) {
      return data['chosen_ans'] == data['correct_ans'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Your score: $numCorrectQue/$numTotalQue',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.yellowAccent,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            QuizSummary(summaryData),
            const SizedBox(
              height: 30,
            ),
            OutlinedButton.icon(
              onPressed: resetQuiz,
              icon: const Icon(Icons.restart_alt_rounded),
              style: ButtonStyle(
                foregroundColor: WidgetStateProperty.resolveWith<Color>(
                    (states) => const Color.fromARGB(255, 192, 255, 149)),
                side: WidgetStateProperty.resolveWith((states) =>
                    const BorderSide(color: Color.fromARGB(255, 192, 255, 149), width: 0.5)),
              ),
              label: const Text('RESTART QUIZ'),
            ),
          ],
        ),
      ),
    );
  }
}
