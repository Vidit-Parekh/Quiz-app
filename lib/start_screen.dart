import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:quiz_app/question_screen.dart';
//import 'package:quiz_app/quiz.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});
  final void Function() startQuiz;
  @override
  Widget build(context) {
    return Center(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Opacity(
          opacity: 0.75,
          child: Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        Text(
          "Let's Start the quiz!",
          style: GoogleFonts.lato(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        OutlinedButton.icon(
          onPressed: startQuiz,
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.white,
          ),
          label: const Text(
            'Start',
          ),
          icon: const Icon(Icons.arrow_right_alt),
        ),
      ],
    ));
  }
}
