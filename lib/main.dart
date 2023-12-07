import 'package:flutter/material.dart';
import 'package:second_quiz_app/quiz.dart';

void main() {
  runApp(
    const Quiz(),
  );
}

// class Home extends StatelessWidget {
//   const Home({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Image.asset(
//             "assets/images/quiz-logo.png",
//             width: 230,
//           ),
//           const SizedBox(
//             height: 50,
//           ),
//           const Text(
//             "Learn Flutter the fun way!",
//             style: TextStyle(
//                 color: Color.fromARGB(255, 234, 234, 234), fontSize: 18),
//           ),
//           const SizedBox(
//             height: 20,
//           ),
//           const ElevatedButton(
//             onPressed: null,
//             child: Text("Start Quiz", style: TextStyle(color: Colors.white)),
//           )
//         ],
//       ),
//     );
//   }
// }
