import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  final void Function() onStartTest;

  const StartScreen({
    Key? key,
    required this.onStartTest,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Personality Test',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 30),
          const Text(
            'Discover your personality type!',
            style: TextStyle(
              fontSize: 18,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 50),
          ElevatedButton(
            onPressed: onStartTest,
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(
                horizontal: 40,
                vertical: 15,
              ),
            ),
            child: const Text(
              'Start Test',
              style: TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}