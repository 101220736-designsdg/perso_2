import 'package:flutter/material.dart';
import '../models/question.dart';
import '../models/personality_type.dart';

class QuestionScreen extends StatelessWidget {
  final Question question;
  final void Function(PersonalityType) onSelectAnswer;
  final int questionIndex;
  final int totalQuestions;

  const QuestionScreen({
    Key? key,
    required this.question,
    required this.onSelectAnswer,
    required this.questionIndex,
    required this.totalQuestions,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Question ${questionIndex + 1} of $totalQuestions',
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 30),
        Container(
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Text(
            question.text,
            style: const TextStyle(fontSize: 20),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(height: 30),
        ...question.answers.map((answer) {
          return Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 5,
            ),
            child: ElevatedButton(
              onPressed: () {
                onSelectAnswer(answer.personalityType);
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  vertical: 12,
                  horizontal: 20,
                ),
                alignment: Alignment.centerLeft,
              ),
              child: Text(
                answer.text,
                style: const TextStyle(fontSize: 16),
              ),
            ),
          );
        }).toList(),
      ],
    );
  }
}