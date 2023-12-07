import 'package:flutter/material.dart';
import 'package:second_quiz_app/answare_btn.dart';
import 'package:second_quiz_app/data/question.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({
    super.key,
    required this.onSelectAnsware,
  });

  //? How to Storing the onSelectAnsware in _QuestionScreenState ??
  final void Function(String answare) onSelectAnsware;

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  var currentQuestionIndex = 0;

  void answareQuestion(String answare) {
    //* "widget" the built in keyword for get variable in parent class
    widget.onSelectAnsware(answare);
    
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(35),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              currentQuestion.text,
              style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 210, 137, 244),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            ...currentQuestion.getShuffledAnsware().map(
              (item) {
                return AnswareButton(
                  answareText: item,
                  onTap: () {
                    answareQuestion(item);
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
