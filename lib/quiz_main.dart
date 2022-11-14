// import 'package:flutter/material.dart';
// import 'package:quiz_view/quiz_view.dart';

// class Home extends StatefulWidget {
//   const Home({super.key});

//   @override
//   State<Home> createState() => _Quiz_appState();
// }

// class _Quiz_appState extends State<Home> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         elevation: 0.0,
//         title: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               "Quiz",
//               style: TextStyle(
//                   fontSize: 40,
//                   fontStyle: FontStyle.italic,
//                   color: Color.fromARGB(255, 255, 255, 255)),
//             ),
//             Text(
//               " App",
//               style: TextStyle(
//                   fontSize: 20,
//                   fontStyle: FontStyle.italic,
//                   color: Colors.blue.shade50),
//             ),
//           ],
//         ),
//       ),
//       body: SingleChildScrollView(
//         child: Center(
//           child: Column(
//             children: [
//               quiz(
//                 context: context,
//                 quet: 'Question 1',
//                 que: " Identify the incorrect constructor type?",
//                 ans: "Friend",
//                 lans: ['Copy', 'Default', 'Parameterized'],
//               ),
//               Divider(
//                 height: 25,
//               ),
//               quiz(
//                 context: context,
//                 quet: 'Question 2',
//                 que: "C++ uses which approach??",
//                 ans: "Bottom-Up",
//                 lans: ['Left-Right', 'Right-Left', 'Top-Down'],
//               ),
//               Divider(
//                 height: 25,
//               ),
//               quiz(
//                 context: context,
//                 quet: 'Question 3',
//                 que: "Identify the correct syntax for declaring arrays in C++.",
//                 ans: "int arr[10]",
//                 lans: ['array arr[100]', 'array[10]', 'int arr'],
//               ),
//               Divider(
//                 height: 25,
//               ),
//               quiz(
//                 context: context,
//                 quet: 'Question 4',
//                 que: "Which of the following is “address of operator ?",
//                 ans: "&",
//                 lans: ['*', '&&', '[]'],
//               ),
//               Divider(
//                 height: 25,
//               ),
//               quiz(
//                 context: context,
//                 quet: 'Question 5',
//                 que: "Identify the correct example for a pre-increment operato",
//                 ans: "++n",
//                 lans: ['n--', 'n++', '++n'],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   QuizView quiz(
//       {BuildContext context,
//       String quet,
//       String que,
//       String ans,
//       List<String> lans}) {
//     return QuizView(
//       questionTag: quet,
//       questionColor: Colors.redAccent.shade700,
//       tagColor: Colors.black54,
//       backgroundColor: Colors.white70,
//       tagBackgroundColor: Color(0xffF1CDC5),
//       answerBackgroundColor: Color(0xffA39E9D),
//       question: que,
//       height: 500,
//       width: 350,
//       rightAnswer: ans,
//       wrongAnswers: lans,
//       onRightAnswer: () {
//         showDialog(
//             context: context,
//             builder: (BuildContext context) {
//               return AlertDialog(
//                 title: Text("Correct!"),
//               );
//             });
//       },
//       onWrongAnswer: () {
//         showDialog(
//             context: context,
//             builder: (BuildContext context) {
//               return AlertDialog(
//                 title: Text("Wrong!"),
//               );
//             });
//       },
//     );
//   }
// }
