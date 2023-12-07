import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            "assets/images/quiz-logo.png",
            width: 230,
            color: const Color.fromARGB(163, 217, 216, 216),
          ),
          const SizedBox(
            height: 40,
          ),
           Text(
            "Learn Flutter the fun way!",
            style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 221, 221, 221),
                fontSize: 24,
                fontWeight: FontWeight.w400),
          ),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton.icon(
            icon: const Icon(
              Icons.arrow_right_alt,
            ),
            onPressed: startQuiz,
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white70,
            ),
            label: const Text(
              'Start Quiz',
              style: TextStyle(
                fontWeight: FontWeight.w500,
              ),
            ),
          )
        ],
      ),
    );
  }
}
