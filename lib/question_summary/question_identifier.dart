import 'package:flutter/material.dart';

class QuestionIdentifier extends StatelessWidget {
  const QuestionIdentifier(
      {super.key, required this.questionIndex, required this.isCorrectAnswer});

  final int questionIndex;
  final bool isCorrectAnswer;

  @override
  Widget build(BuildContext context) {
    // make a easy to read index or nubmer
    final questionNum = questionIndex + 1;

    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
          color:
              isCorrectAnswer ? Colors.blueAccent[300] : Colors.pinkAccent[100],
          borderRadius: BorderRadius.circular(100)),
      alignment: Alignment.center,
      child: Text(
        questionNum.toString(),
        style: const TextStyle(
            fontWeight: FontWeight.bold, color: Color.fromARGB(255, 22, 2, 56)),
      ),
    );
  }
}
