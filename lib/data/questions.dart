import '../models/question.dart';
import '../models/answer.dart';
import '../models/personality_type.dart';

final questions = [
  Question(
    text: 'How do you approach a difficult decision?',
    answers: [
      Answer(
        text: 'Analyze all options logically',
        personalityType: PersonalityType.thinker,
      ),
      Answer(
        text: 'Go with what feels right emotionally',
        personalityType: PersonalityType.feeler,
      ),
      Answer(
        text: 'Make a checklist and plan it out',
        personalityType: PersonalityType.planner,
      ),
      Answer(
        text: 'Take a leap and deal with results later',
        personalityType: PersonalityType.adventurer,
      ),
    ],
  ),
  Question(
    text: 'What excites you the most?',
    answers: [
      Answer(
        text: 'Solving complex problems',
        personalityType: PersonalityType.thinker,
      ),
      Answer(
        text: 'Connecting deeply with others',
        personalityType: PersonalityType.feeler,
      ),
      Answer(
        text: 'Creating a clear path to your goals',
        personalityType: PersonalityType.planner,
      ),
      Answer(
        text: 'Exploring something new',
        personalityType: PersonalityType.adventurer,
      ),
    ],
  ),
  Question(
    text: 'Which best describes your work style?',
    answers: [
      Answer(
        text: 'Detail-focused and logical',
        personalityType: PersonalityType.thinker,
      ),
      Answer(
        text: 'People-centered and intuitive',
        personalityType: PersonalityType.feeler,
      ),
      Answer(
        text: 'Organized and systematic',
        personalityType: PersonalityType.planner,
      ),
      Answer(
        text: 'Flexible and spontaneous',
        personalityType: PersonalityType.adventurer,
      ),
    ],
  ),
  Question(
    text: 'How do you recharge after a long day?',
    answers: [
      Answer(
        text: 'Quiet reflection or reading',
        personalityType: PersonalityType.thinker,
      ),
      Answer(
        text: 'Spending time with close friends',
        personalityType: PersonalityType.feeler,
      ),
      Answer(
        text: 'Planning tomorrow\'s tasks',
        personalityType: PersonalityType.planner,
      ),
      Answer(
        text: 'Doing something active or exciting',
        personalityType: PersonalityType.adventurer,
      ),
    ],
  ),
  Question(
    text: 'You\'re most comfortable when...',
    answers: [
      Answer(
        text: 'Things make logical sense',
        personalityType: PersonalityType.thinker,
      ),
      Answer(
        text: 'Everyone is getting along',
        personalityType: PersonalityType.feeler,
      ),
      Answer(
        text: 'There\'s a clear structure',
        personalityType: PersonalityType.planner,
      ),
      Answer(
        text: 'You\'re free to try new things',
        personalityType: PersonalityType.adventurer,
      ),
    ],
  ),
  Question(
    text: 'Your biggest strength is...',
    answers: [
      Answer(
        text: 'Thinking critically',
        personalityType: PersonalityType.thinker,
      ),
      Answer(
        text: 'Empathizing with others',
        personalityType: PersonalityType.feeler,
      ),
      Answer(
        text: 'Staying organized',
        personalityType: PersonalityType.planner,
      ),
      Answer(
        text: 'Being adventurous',
        personalityType: PersonalityType.adventurer,
      ),
    ],
  ),
];

final personalityMessages = {
  PersonalityType.feeler: 'You are a Feeler\nEmpathetic, warm, and guided by emotion.',
  PersonalityType.thinker: 'You are a Thinker\nLogical, curious, and focused on ideas.',
  PersonalityType.planner: 'You are a Planner\nOrganized, strategic, and goal-oriented.',
  PersonalityType.adventurer: 'You are an Adventurer\nSpontaneous, bold, and always exploring.',
};