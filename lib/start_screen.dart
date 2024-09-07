import 'package:flutter/material.dart';

class start_screen extends StatefulWidget {
  const start_screen({super.key});

  @override
  State<start_screen> createState() => _start_screenState();
}

class _start_screenState extends State<start_screen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          // Image
          const SizedBox(height: 30.0),
          const Image(
            image: AssetImage('images/quiz-logo.png'),
            width: 300,
          ),
          const SizedBox(
            height: 60,
          ),

          //Text
          const Text(
            "Let's Play Quiz",
            style: TextStyle(
                color: Colors.pink,
                fontSize: 34.0,
                fontWeight: FontWeight.bold),
          ),

          //Button
          const SizedBox(height: 50),
          MaterialButton(
            onPressed: () {},
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
          )
        ],
      ),
    );
  }
}
