import 'package:flutter/material.dart';
import 'quiz_app.dart';
import 'model/quiz.dart';

void main() {
  Question q1 = const Question(
      title: "Who is the best teacher?",
      possibleAnswers: ["Ronan", "Hongly", 'Leangsiv'],
      goodAnswer: 'Ronan');
  Question q2 = const Question(
      title: "Which color is the best?",
      possibleAnswers: ["Blue", "Red", 'Green'],
      goodAnswer: 'Red');
  Question q3 = const Question(
      title: "What is the capital of France?",
      possibleAnswers: ["Paris", "Phnom penh", "Rome", "Singapore"],
      goodAnswer: 'Paris');

  List<Question> myQuestions = [q1, q2, q3];
  Quiz myQuiz = Quiz(title: "Crazy Quizz", questions: myQuestions);

  runApp(QuizApp(myQuiz));
}
