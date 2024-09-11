import 'package:flutter/material.dart';

class StartScreen extends StatefulWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min, // To center contents properly
        children: <Widget>[
          // Image
          const SizedBox(height: 30.0),

          // Opacity to image
          const Opacity(
            opacity: 0.9,
            child: Image(
              image: AssetImage('images/quiz-logo.png'),
              width: 300,
            ),
          ),
          const SizedBox(
            height: 60,
          ),

          // Text
          const Text(
            "Let's Play Quiz",
            style: TextStyle(
              color: Colors.pink,
              fontSize: 34.0,
              fontWeight: FontWeight.bold,
            ),
          ),

          // Button
          const SizedBox(height: 50),
          MaterialButton(
            onPressed: widget.startQuiz, // Corrected the function call
            color: Colors.pink,
            padding:
                const EdgeInsets.symmetric(horizontal: 52.0, vertical: 18.0),
            child: const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.arrow_right_outlined,
                  color: Colors.white,
                  size: 52.0,
                ),
                SizedBox(width: 8),
                Text(
                  'Start Quiz',
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
