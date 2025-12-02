import 'package:flutter/material.dart';
import 'models/personality_type.dart';
import 'screens/start_screen.dart';
import 'screens/question_screen.dart';
import 'screens/result_screen.dart';
import 'data/questions.dart';

class PersonalityTestApp extends StatefulWidget {
  const PersonalityTestApp({Key? key}) : super(key: key);

  @override
  State<PersonalityTestApp> createState() => _PersonalityTestAppState();
}

class _PersonalityTestAppState extends State<PersonalityTestApp> {
  var activeScreen = 'start-screen';
  var currentQuestionIndex = 0;
  final Map<PersonalityType, int> personalityScores = {
    PersonalityType.thinker: 0,
    PersonalityType.feeler: 0,
    PersonalityType.planner: 0,
    PersonalityType.adventurer: 0,
  };

  void startTest() {
    setState(() {
      activeScreen = 'question-screen';
      currentQuestionIndex = 0;
      personalityScores[PersonalityType.thinker] = 0;
      personalityScores[PersonalityType.feeler] = 0;
      personalityScores[PersonalityType.planner] = 0;
      personalityScores[PersonalityType.adventurer] = 0;
    });
  }

  void selectAnswer(PersonalityType type) {
    personalityScores[type] = personalityScores[type]! + 1;

    if (currentQuestionIndex < questions.length - 1) {
      setState(() {
        currentQuestionIndex++;
      });
    } else {
      setState(() {
        activeScreen = 'result-screen';
      });
    }
  }

  PersonalityType get resultPersonality {
    PersonalityType highestType = PersonalityType.thinker;
    int highestScore = personalityScores[PersonalityType.thinker]!;

    personalityScores.forEach((type, score) {
      if (score > highestScore) {
        highestScore = score;
        highestType = type;
      }
    });

    return highestType;
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(onStartTest: startTest);

    if (activeScreen == 'question-screen') {
      screenWidget = QuestionScreen(
        question: questions[currentQuestionIndex],
        onSelectAnswer: selectAnswer,
        questionIndex: currentQuestionIndex,
        totalQuestions: questions.length,
      );
    } else if (activeScreen == 'result-screen') {
      final resultType = resultPersonality;
      screenWidget = ResultScreen(
        resultType: resultType,
        resultMessage: personalityMessages[resultType]!,
        onRestartTest: startTest,
      );
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Personality Test'),
          centerTitle: true,
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.blue.shade50,
                Colors.blue.shade100,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}