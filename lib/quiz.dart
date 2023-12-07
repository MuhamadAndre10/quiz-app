import 'package:flutter/material.dart';
import 'package:second_quiz_app/data/question.dart';
import 'package:second_quiz_app/question_screen.dart';
import 'package:second_quiz_app/start_screen.dart';
import 'package:second_quiz_app/result_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizeState();
}

class _QuizeState extends State<Quiz> {
  //* buat wadah untuk menyimpan jawaban.
  List<String> selectedAnsware = [];
  var activeScreen = "start_screen";

  void switchScreen() {
    setState(() {
      activeScreen = "question_screen";
    });
  }

  //* make a function for life up state in question screen
  void chooseAnsware(String answare) {
    // add new answare to the list
    selectedAnsware.add(answare);

    if (selectedAnsware.length == questions.length) {
      // selectedAnsware = [];
      setState(() {
        activeScreen = "result_screen";
      });
    }
  }

  void restartQuiz(){
    setState(() {
      selectedAnsware = [];
      activeScreen = "question_screen";
      
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == "question_screen") {
      //* Send func chooseAnsware Screen to Question Screen widget
      screenWidget = QuestionScreen(
        onSelectAnsware: chooseAnsware,
      );
    }

    if (activeScreen == "result_screen") {
      screenWidget = ResultScreen(
        chooseAnswere: selectedAnsware,
        onRestart: restartQuiz,
      );
    }

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueAccent[400],
        appBar: AppBar(
          title: const Text("Quiz App"),
          backgroundColor: Colors.blueAccent,
        ),
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 93, 20, 146),
                Color.fromARGB(255, 94, 14, 128)
              ],
              begin: Alignment.topLeft,
              end: Alignment.topRight,
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
