import 'package:day04_flashcards/flashcard.dart';
import 'package:day04_flashcards/flashcard_view.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<FlashCard> _flashcards = [
    FlashCard(
      question: "What programming language does flutter us",
      answer: "Dart",
    ),
    FlashCard(
      question: "What is your name",
      answer: "Doug",
    ),
    FlashCard(
      question: "Fav Food",
      answer: "Pork",
    ),
  ];

  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 250,
                height: 250,
                child: FlipCard(
                  front: FlashcardView(
                    text: _flashcards[_currentIndex].question,
                  ),
                  back: FlashcardView(
                    text: _flashcards[_currentIndex].answer,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  OutlinedButton.icon(
                    onPressed: showPrevCard,
                    icon: const Icon(Icons.chevron_left),
                    label: const Text('Prev'),
                  ),
                  OutlinedButton.icon(
                    onPressed: showNextCard,
                    label: const Text('Next'),
                    icon: const Icon(Icons.chevron_right),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void showNextCard() {
    setState(() {
      _currentIndex =
          _currentIndex + 1 < _flashcards.length ? _currentIndex + 1 : 0;
    });
  }

  void showPrevCard() {
    setState(() {
      _currentIndex =
          (_currentIndex - 1 >= 0) ? _currentIndex - 1 : _flashcards.length - 1;
    });
  }
}
