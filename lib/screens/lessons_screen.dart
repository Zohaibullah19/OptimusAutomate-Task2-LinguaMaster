import 'package:flutter/material.dart';
import '../services/tts_service.dart';

class LessonsScreen extends StatelessWidget {
  LessonsScreen({super.key});

  final TTSService ttsService = TTSService();

  @override
  Widget build(BuildContext context) {
    final lessons = [
  {
    "word": "Hello",
    "translation": "سلام",
    "meaning": "Greeting",
  },
  {
    "word": "Welcome",
    "translation": "خوش آمدید",
    "meaning": "Friendly reception",
  },
  {
    "word": "Thank You",
    "translation": "شکریہ",
    "meaning": "Expression of gratitude",
  },
  {
    "word": "Good Morning",
    "translation": "صبح بخیر",
    "meaning": "Morning greeting",
  },
  {
    "word": "Good Night",
    "translation": "شب بخیر",
    "meaning": "Night farewell",
  },
  {
    "word": "Please",
    "translation": "براہ کرم",
    "meaning": "Polite request",
  },
  {
    "word": "Sorry",
    "translation": "معذرت",
    "meaning": "Apology",
  },
  {
    "word": "Friend",
    "translation": "دوست",
    "meaning": "A person you like and trust",
  },
  {
    "word": "Family",
    "translation": "خاندان",
    "meaning": "Group of related people",
  },
  {
    "word": "Success",
    "translation": "کامیابی",
    "meaning": "Achievement of goals",
  },
];
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FB),

      appBar: AppBar(
        title: const Text(
          "Vocabulary Lessons",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color(0xFF4F46E5),
        foregroundColor: Colors.white,
      ),

      body: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            color: const Color(0xFF4F46E5),
            child: const Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start,
              children: [
                Text(
                  "Learn New Words 📚",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight:
                        FontWeight.bold,
                  ),
                ),
                SizedBox(height: 6),
                Text(
                  "Tap the speaker icon to hear pronunciation.",
                  style: TextStyle(
                    color: Colors.white70,
                  ),
                ),
              ],
            ),
          ),

          Expanded(
            child: ListView.builder(
              padding:
                  const EdgeInsets.all(16),
              itemCount: lessons.length,
              itemBuilder:
                  (context, index) {
                final lesson =
                    lessons[index];

                return Card(
                  elevation: 4,
                  margin:
                      const EdgeInsets.only(
                    bottom: 12,
                  ),
                  shape:
                      RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(
                            16),
                  ),
                  child: ListTile(
                    contentPadding:
                        const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 10,
                    ),

                    leading: Container(
                      padding:
                          const EdgeInsets.all(
                              10),
                      decoration:
                          BoxDecoration(
                        color: const Color(
                          0xFF4F46E5,
                        ).withAlpha(25),
                        shape:
                            BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.menu_book,
                        color: Color(
                          0xFF4F46E5,
                        ),
                      ),
                    ),

                    title: Text(
  lessons[index]["word"]!,
),

subtitle: Column(
  crossAxisAlignment:
      CrossAxisAlignment.start,
  children: [
    Text(
      lessons[index]["translation"]!,
      style: const TextStyle(
        color: Colors.green,
        fontWeight: FontWeight.bold,
      ),
    ),

    Text(
      lessons[index]["meaning"]!,
    ),
  ],
),
                    trailing:
                        IconButton(
                      icon: const Icon(
                        Icons.volume_up,
                        color: Color(
                          0xFF4F46E5,
                        ),
                      ),
                      onPressed: () {
                        ttsService.speak(
                          lesson["word"]!,
                        );
                      },
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}