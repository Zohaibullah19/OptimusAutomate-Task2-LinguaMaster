import 'package:flutter/material.dart';

class WordOfDayScreen extends StatelessWidget {
  const WordOfDayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final words = [
      {
        "word": "Hello",
        "meaning": "A greeting used when meeting someone.",
      },
      {
        "word": "Welcome",
        "meaning": "A friendly greeting to someone arriving.",
      },
      {
        "word": "Resilient",
        "meaning":
            "Able to recover quickly from difficulties.",
      },
      {
        "word": "Grateful",
        "meaning":
            "Feeling thankful and appreciative.",
      },
      {
        "word": "Confident",
        "meaning":
            "Feeling sure about yourself.",
      },
      {
        "word": "Ambition",
        "meaning":
            "A strong desire to achieve something.",
      },
      {
        "word": "Opportunity",
        "meaning":
            "A favorable chance for progress.",
      },
    ];

    final today =
        DateTime.now().day % words.length;

    final word = words[today];

    return Scaffold(
      backgroundColor:
          const Color(0xFFF5F7FB),

      appBar: AppBar(
        backgroundColor:
            const Color(0xFF4F46E5),
        foregroundColor: Colors.white,
        title:
            const Text("Word of the Day"),
      ),

      body: Center(
        child: Padding(
          padding:
              const EdgeInsets.all(20),
          child: Card(
            elevation: 6,
            shape:
                RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.circular(
                      20),
            ),
            child: Padding(
              padding:
                  const EdgeInsets.all(
                      24),
              child: Column(
                mainAxisSize:
                    MainAxisSize.min,
                children: [
                  const Icon(
                    Icons.auto_awesome,
                    size: 70,
                    color:
                        Color(0xFF4F46E5),
                  ),

                  const SizedBox(
                      height: 20),

                  Text(
                    word["word"]!,
                    style:
                        const TextStyle(
                      fontSize: 30,
                      fontWeight:
                          FontWeight.bold,
                    ),
                  ),

                  const SizedBox(
                      height: 12),

                  Text(
                    word["meaning"]!,
                    textAlign:
                        TextAlign.center,
                    style:
                        const TextStyle(
                      fontSize: 18,
                    ),
                  ),

                  const SizedBox(
                      height: 20),

                  const Text(
                    "✨ New word every day",
                    style: TextStyle(
                      color:
                          Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}