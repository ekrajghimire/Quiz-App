import 'package:flutter/material.dart';
import 'package:quizapp/start_screen.dart';

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
    return Scaffold(
        appBar: AppBar(
          title: const Text("Adv. Quiz App"),
          titleTextStyle: const TextStyle(color: Colors.white),
          backgroundColor: Colors.pink,
        ),
        body: const start_screen());
  }
}

//test
