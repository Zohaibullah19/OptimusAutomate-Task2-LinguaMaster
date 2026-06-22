import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';

class FlashcardScreen extends StatelessWidget {
  const FlashcardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final flashcards = [
  {
    "word": "Hello",
    "urdu": "سلام",
    "meaning": "Greeting",
  },
  {
    "word": "Welcome",
    "urdu": "خوش آمدید",
    "meaning": "Friendly reception",
  },
  {
    "word": "Thank You",
    "urdu": "شکریہ",
    "meaning": "Expression of gratitude",
  },
  {
    "word": "Good Morning",
    "urdu": "صبح بخیر",
    "meaning": "Morning greeting",
  },
  {
    "word": "Good Night",
    "urdu": "شب بخیر",
    "meaning": "Night farewell",
  },
  {
    "word": "Please",
    "urdu": "براہ کرم",
    "meaning": "Polite request",
  },
  {
    "word": "Sorry",
    "urdu": "معذرت",
    "meaning": "Apology",
  },
  {
    "word": "Friend",
    "urdu": "دوست",
    "meaning": "A person you like and trust",
  },
  {
    "word": "Family",
    "urdu": "خاندان",
    "meaning": "Group of related people",
  },
  {
    "word": "Success",
    "urdu": "کامیابی",
    "meaning": "Achievement of goals",
  },
];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Flashcards"),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(20),
        itemCount: flashcards.length,
        itemBuilder: (context, index) {
          return Padding(
            padding:
                const EdgeInsets.only(bottom: 20),
            child: FlipCard(
              front: Container(
                height: 180,
                decoration: BoxDecoration(
                  color:
                      const Color(0xFF4F46E5),
                  borderRadius:
                      BorderRadius.circular(
                          20),
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment:
                        MainAxisAlignment
                            .center,
                    children: [
                      Text(
                        flashcards[index]
                            ["word"]!,
                        style:
                            const TextStyle(
                          color:
                              Colors.white,
                          fontSize: 30,
                          fontWeight:
                              FontWeight
                                  .bold,
                        ),
                      ),
                      const SizedBox(
                          height: 15),
                      Text(
                        flashcards[index]
                            ["urdu"]!,
                        style:
                            const TextStyle(
                          color:
                              Colors.white70,
                          fontSize: 24,
                          fontWeight:
                              FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              back: Container(
                height: 180,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius:
                      BorderRadius.circular(
                          20),
                ),
                child: Center(
                  child: Padding(
                    padding:
                        const EdgeInsets.all(
                            20),
                    child: Column(
                      mainAxisAlignment:
                          MainAxisAlignment
                              .center,
                      children: [
                        const Text(
                          "Meaning",
                          style: TextStyle(
                            color: Colors
                                .white70,
                            fontSize: 18,
                          ),
                        ),
                        const SizedBox(
                            height: 10),
                        Text(
                          flashcards[index]
                              ["meaning"]!,
                          textAlign:
                              TextAlign.center,
                          style:
                              const TextStyle(
                            color:
                                Colors.white,
                            fontSize: 22,
                            fontWeight:
                                FontWeight
                                    .bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}