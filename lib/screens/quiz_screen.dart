import 'package:flutter/material.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() =>
      _QuizScreenState();
}

class _QuizScreenState
    extends State<QuizScreen> {
  int currentQuestion = 0;
  int score = 0;
  bool quizFinished = false;

  final List<Map<String, dynamic>>
      questions = [
    {
      "question":
          "What is the Urdu translation of 'Hello'?",
      "options": [
        "سلام",
        "شکریہ",
        "دوست",
        "خاندان"
      ],
      "answer": "سلام",
    },
    {
      "question":
          "What is the meaning of 'Thank You'?",
      "options": [
        "Greeting",
        "Apology",
        "Expression of gratitude",
        "Farewell"
      ],
      "answer":
          "Expression of gratitude",
    },
    {
      "question":
          "What is the Urdu translation of 'Friend'?",
      "options": [
        "کامیابی",
        "دوست",
        "خاندان",
        "معذرت"
      ],
      "answer": "دوست",
    },
    {
      "question":
          "What does 'Good Morning' mean?",
      "options": [
        "Morning greeting",
        "Night farewell",
        "Success",
        "Family"
      ],
      "answer":
          "Morning greeting",
    },
    {
      "question":
          "What is the Urdu translation of 'Success'?",
      "options": [
        "دوست",
        "کامیابی",
        "شکریہ",
        "سلام"
      ],
      "answer": "کامیابی",
    },
  ];

  void checkAnswer(
      String selectedAnswer) {
    if (selectedAnswer ==
        questions[currentQuestion]
            ["answer"]) {
      score++;
    }

    if (currentQuestion <
        questions.length - 1) {
      setState(() {
        currentQuestion++;
      });
    } else {
      setState(() {
        quizFinished = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (quizFinished) {
      return Scaffold(
        appBar: AppBar(
          title:
              const Text("Quiz Result"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment:
                MainAxisAlignment
                    .center,
            children: [
              const Icon(
                Icons.emoji_events,
                size: 80,
                color: Colors.amber,
              ),

              const SizedBox(
                  height: 20),

              Text(
                "Your Score",
                style:
                    const TextStyle(
                  fontSize: 24,
                ),
              ),

              const SizedBox(
                  height: 10),

              Text(
                "$score / ${questions.length}",
                style:
                    const TextStyle(
                  fontSize: 40,
                  fontWeight:
                      FontWeight.bold,
                ),
              ),

              const SizedBox(
                  height: 20),

              ElevatedButton(
                onPressed: () {
                  setState(() {
                    currentQuestion = 0;
                    score = 0;
                    quizFinished =
                        false;
                  });
                },
                child: const Text(
                  "Try Again",
                ),
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title:
            const Text("Daily Quiz"),
      ),
      body: Padding(
        padding:
            const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment
                  .stretch,
          children: [
            Text(
              "Question ${currentQuestion + 1}/${questions.length}",
              style:
                  const TextStyle(
                fontSize: 18,
                fontWeight:
                    FontWeight.bold,
              ),
            ),

            const SizedBox(
                height: 20),

            Text(
              questions[
                      currentQuestion]
                  ["question"],
              style:
                  const TextStyle(
                fontSize: 22,
                fontWeight:
                    FontWeight.bold,
              ),
            ),

            const SizedBox(
                height: 30),

            ...questions[
                    currentQuestion]
                ["options"]
                .map<Widget>(
              (option) =>
                  Padding(
                padding:
                    const EdgeInsets
                        .only(
                        bottom: 12),
                child:
                    ElevatedButton(
                  onPressed: () =>
                      checkAnswer(
                          option),
                  child:
                      Text(option),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}