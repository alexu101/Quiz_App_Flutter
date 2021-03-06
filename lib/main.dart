import 'package:flutter/material.dart';
import './answers.dart';
import './question.dart';
import './result.dart';
import './quiz.dart';
import './welcome.dart';
import './explanation.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int totalScore = 0;
  int questionIndex = -1;

  void resetQuiz() {
    setState(() {
      questionIndex = -1;
      totalScore = 0;
    });
  }

  bool explanationsPage = false;
  void goToExplanations() {
    setState(() {
      explanationsPage = true;
    });
  }

  void hitBegin() {
    setState(() {
      questionIndex++;
    });
  }

  void chooseFunction(int score) {
    totalScore += score;
    print(score);
    setState(() {
      questionIndex++;
    });
  }

  List questions = [
    {
      'questionText': '๐ค I have a kind word for everyone. ๐ค',
      'answers': [
        {'text': '๐ Strongly disagree', 'score': 10},
        {'text': '๐ Slightly disagree', 'score': 20},
        {'text': '๐ Neutral or cannot decide', 'score': 30},
        {'text': '๐ Slightly agree', 'score': 40},
        {'text': '๐ Strongly agree', 'score': 50},
      ],
    },
    {
      'questionText': '๐โโ๏ธ I am always prepared. ๐โโ๏ธ',
      'answers': [
        {'text': '๐ Strongly disagree', 'score': 10},
        {'text': '๐ Slightly disagree', 'score': 20},
        {'text': '๐ Neutral or cannot decide', 'score': 30},
        {'text': '๐ Slightly agree', 'score': 40},
        {'text': '๐ Strongly agree', 'score': 50},
      ],
    },
    {
      'questionText': '๐จโ๐งโ๐ง I feel comfortable around people. ๐จโ๐งโ๐ง',
      'answers': [
        {'text': '๐ Strongly disagree', 'score': 10},
        {'text': '๐ Slightly disagree', 'score': 20},
        {'text': '๐ Neutral or cannot decide', 'score': 30},
        {'text': '๐ Slightly agree', 'score': 40},
        {'text': '๐ Strongly agree', 'score': 50},
      ],
    },
    {
      'questionText': '๐ญ I believe in the important of art. ๐ญ',
      'answers': [
        {'text': '๐ Strongly disagree', 'score': 10},
        {'text': '๐ Slightly disagree', 'score': 20},
        {'text': '๐ Neutral or cannot decide', 'score': 30},
        {'text': '๐ Slightly agree', 'score': 40},
        {'text': '๐ Strongly agree', 'score': 50},
      ],
    },
    {
      'questionText': '๐ I avoid taking a lot of responsability. ๐',
      'answers': [
        {'text': '๐ Strongly disagree', 'score': 10},
        {'text': '๐ Slightly disagree', 'score': 20},
        {'text': '๐ Neutral or cannot decide', 'score': 30},
        {'text': '๐ Slightly agree', 'score': 40},
        {'text': '๐ Strongly agree', 'score': 50},
      ],
    },
    {
      'questionText':
          '๐ There are many things that I don\'t like about myself. ๐',
      'answers': [
        {'text': '๐ Strongly disagree', 'score': 10},
        {'text': '๐ Slightly disagree', 'score': 20},
        {'text': '๐ Neutral or cannot decide', 'score': 30},
        {'text': '๐ Slightly agree', 'score': 40},
        {'text': '๐ Strongly agree', 'score': 50},
      ],
    },
    {
      'questionText': '๐จโ๐งโ๐ง I make friends easily. ๐จโ๐งโ๐ง',
      'answers': [
        {'text': '๐ Strongly disagree', 'score': 10},
        {'text': '๐ Slightly disagree', 'score': 20},
        {'text': '๐ Neutral or cannot decide', 'score': 30},
        {'text': '๐ Slightly agree', 'score': 40},
        {'text': '๐ Strongly agree', 'score': 50},
      ],
    },
    {
      'questionText': '๐จโ๐งโ๐ง I accept people the way they are. ๐จโ๐งโ๐ง',
      'answers': [
        {'text': '๐ Strongly disagree', 'score': 10},
        {'text': '๐ Slightly disagree', 'score': 20},
        {'text': '๐ Neutral or cannot decide', 'score': 30},
        {'text': '๐ Slightly agree', 'score': 40},
        {'text': '๐ Strongly agree', 'score': 50},
      ],
    },
    {
      'questionText': '๐ I am the life of the party. ๐',
      'answers': [
        {'text': '๐ Strongly disagree', 'score': 10},
        {'text': '๐ Slightly disagree', 'score': 20},
        {'text': '๐ Neutral or cannot decide', 'score': 30},
        {'text': '๐ Slightly agree', 'score': 40},
        {'text': '๐ Strongly agree', 'score': 50},
      ],
    },
    {
      'questionText': '๐คฏ My moods change easily. ๐คฏ',
      'answers': [
        {'text': '๐ Strongly disagree', 'score': 10},
        {'text': '๐ Slightly disagree', 'score': 20},
        {'text': '๐ Neutral or cannot decide', 'score': 30},
        {'text': '๐ Slightly agree', 'score': 40},
        {'text': '๐ Strongly agree', 'score': 50},
      ],
    },
    {
      'questionText': '๐ง? I have a vivid imagination. ๐ง?',
      'answers': [
        {'text': '๐ Strongly disagree', 'score': 10},
        {'text': '๐ Slightly disagree', 'score': 20},
        {'text': '๐ Neutral or cannot decide', 'score': 30},
        {'text': '๐ Slightly agree', 'score': 40},
        {'text': '๐ Strongly agree', 'score': 50},
      ],
    },
    {
      'questionText': '๐งพ I make plans and stick to them. ๐งพ',
      'answers': [
        {'text': '๐ Strongly disagree', 'score': 10},
        {'text': '๐ Slightly disagree', 'score': 20},
        {'text': '๐ Neutral or cannot decide', 'score': 30},
        {'text': '๐ Slightly agree', 'score': 40},
        {'text': '๐ Strongly agree', 'score': 50},
      ],
    },
  ];

  String yourResult(int score) {
    List explanationTexts = [
      '๐You are awesome!',
      '๐คYou are nice!',
      '๐You are ok!'
    ];
    if (score > 400)
      return explanationTexts[0];
    else if (score > 240)
      return explanationTexts[1];
    else
      return explanationTexts[2];
  }

  void goBack() {
    setState(() {
      explanationsPage = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.cyan.shade50,
          appBar: AppBar(
            title: Container(
              child: Text(
                'Personality test๐ป',
              ),
              alignment: Alignment.center,
            ),
            backgroundColor: Colors.cyan,
          ),
          body: (explanationsPage == false)
              ? ((questionIndex == -1)
                  ? Welcome(hitBegin)
                  : ((questionIndex < questions.length)
                      ? Quiz(questions, questionIndex, chooseFunction)
                      : Result(totalScore, resetQuiz, goToExplanations)))
              : Explanation(yourResult(totalScore), goBack, 'Back๐')),
    );
  }
}
