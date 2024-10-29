import 'package:flutter/material.dart';
import 'package:quizapp/answer_button.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'The questions',
            style: TextStyle(color: Colors.pink, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 30,
          ),
          AnswerButton(answerText: 'Answer 1', onTap: () {}),
          AnswerButton(answerText: 'Answer 2', onTap: () {}),
          AnswerButton(answerText: 'Answer 3', onTap: () {}),
        ],
      ),
    );
  }
}
