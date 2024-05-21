import 'package:flutter/material.dart';
import 'package:quiz_app/quiz_summary/summary_item.dart';

class QuizSummary extends StatelessWidget {
  const QuizSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData
              .map(
                (data) => SummaryItem(data),
              )
              .toList(),
        ),
      ),
    );
  }
}
