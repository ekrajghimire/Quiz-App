import 'package:flutter/material.dart';
import 'package:quizapp/quiz.dart';

void main() => runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: QuizApp(),
    ));

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  @override
  Widget build(BuildContext context) {
    return const Quiz();
  }
}
