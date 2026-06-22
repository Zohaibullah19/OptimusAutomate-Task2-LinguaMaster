import 'package:flutter/material.dart';

class GrammarScreen extends StatelessWidget {
  const GrammarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final grammarLessons = [
      {
        "title": "Present Tense",
        "example":
            "I eat food every day.",
      },
      {
        "title": "Past Tense",
        "example":
            "I ate food yesterday.",
      },
      {
        "title": "Future Tense",
        "example":
            "I will eat food tomorrow.",
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Grammar"),
      ),
      body: ListView.builder(
        itemCount:
            grammarLessons.length,
        itemBuilder:
            (context, index) {
          return Card(
            margin:
                const EdgeInsets.all(
                    12),
            child: ListTile(
              leading:
                  const Icon(Icons.book),
              title: Text(
                grammarLessons[index]
                    ["title"]!,
              ),
              subtitle: Text(
                grammarLessons[index]
                    ["example"]!,
              ),
            ),
          );
        },
      ),
    );
  }
}