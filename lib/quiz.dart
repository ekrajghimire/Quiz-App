import 'package:flutter/material.dart';
import 'package:quizapp/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Adv. Quiz App"),
          titleTextStyle: const TextStyle(color: Colors.white),
          backgroundColor: Colors.pink,
        ),
        body: const start_screen());
  }
}
