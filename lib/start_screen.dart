import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            height: 350,
            color: const Color.fromARGB(105, 200, 255, 172),
          ),
          const SizedBox(height: 60),
          Text(
            'Learn Flutter the fun way!',
            style: GoogleFonts.indieFlower(
              fontSize: 24,
              color: const Color.fromARGB(255, 198, 255, 200),
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          OutlinedButton.icon(
            onPressed: startQuiz,
            icon: const Icon(Icons.play_arrow),
            style: ButtonStyle(
              foregroundColor: WidgetStateProperty.resolveWith<Color>(
                  (states) => const Color.fromARGB(255, 192, 255, 149)),
              side: WidgetStateProperty.resolveWith((states) =>
                  const BorderSide(color: Color.fromARGB(255, 192, 255, 149), width: 0.5)),
            ),
            label: const Text('PLAY QUIZ'),
          ),
        ],
      ),
    );
  }
}
