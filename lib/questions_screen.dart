import 'package:flutter/material.dart';
import 'package:quizapp/answer_button.dart';
import 'package:quizapp/data/questions.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[0];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: const TextStyle(
                  color: Colors.pink, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            ...currentQuestion.answers.map((answer) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: AnswerButton(answerText: answer, onTap: () {}),
              );
            }),
            // AnswerButton(answerText: currentQuestion.answers[0], onTap: () {}),
            // const SizedBox(height: 10),
            // AnswerButton(answerText: currentQuestion.answers[1], onTap: () {}),
            // const SizedBox(height: 10),
            // AnswerButton(answerText: currentQuestion.answers[2], onTap: () {}),
            // const SizedBox(height: 10),
            // AnswerButton(answerText: currentQuestion.answers[3], onTap: () {}),
          ],
        ),
      ),
    );
  }
}
