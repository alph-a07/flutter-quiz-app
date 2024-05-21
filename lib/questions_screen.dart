import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/quiz_questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen(this.selectAns, {super.key});

  final void Function(String ans) selectAns;

  @override
  State<QuestionsScreen> createState() => QuestionsScreenState();
}

class QuestionsScreenState extends State<QuestionsScreen> {
  var currQueIndex = 0;

  void answerQue(String ans) {
    setState(() {
      widget.selectAns(ans);
      currQueIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currQue = questions[currQueIndex];

    return Center(
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currQue.que,
              style: GoogleFonts.indieFlower(
                color: const Color.fromARGB(255, 219, 206, 168),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            ...currQue.getShuffledAnswers().map((option) {
              return AnswerButton(option, () {
                answerQue(option);
              });
            }),
          ],
        ),
      ),
    );
  }
}
