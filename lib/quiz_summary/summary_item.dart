import 'package:flutter/material.dart';
import 'package:quiz_app/quiz_summary/question_identifier.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(this.itemData, {super.key});

  final Map<String, Object> itemData;

  @override
  Widget build(BuildContext context) {
    final isCorrectAnswer = itemData['chosen_ans'] == itemData['correct_ans'];

    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 8,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuestionIdentifier(
            isCorrectAnswer: isCorrectAnswer,
            questionIndex: itemData['index'] as int,
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  itemData['que'] as String,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                isCorrectAnswer
                    ? const SizedBox(height: 0)
                    : Text(
                        '❌ ${itemData['chosen_ans'] as String}',
                        style: const TextStyle(
                          color: Color.fromARGB(255, 202, 171, 252),
                        ),
                      ),
                Text(
                  '✅ ${itemData['correct_ans'] as String}',
                  style: const TextStyle(
                    color: Color.fromARGB(255, 181, 254, 246),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
