import 'package:flutter/material.dart';
import 'package:quizapp/questions_screen.dart';
import 'package:quizapp/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  // Widget? activeScreen;

  // @override
  // void initState() {
  //   activeScreen = StartScreen(switchScreen);
  //   super.initState();
  // }

  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(switchScreen);
    if (activeScreen == 'questions-screen') {
      screenWidget = const QuestionScreen();
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Adv. Quiz App"),
        titleTextStyle: const TextStyle(color: Colors.white),
        backgroundColor: Colors.pink,
      ),
      // ternery expression
      //   body: activeScreen == 'start-screen'
      //       ? StartScreen(switchScreen)
      //       : const QuestionScreen(),
      // );
      body: screenWidget,
    );
  }
}
