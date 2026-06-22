import 'package:flutter/material.dart';
import 'word_of_day_screen.dart';
import '../services/auth_service.dart';
import 'lessons_screen.dart';
import 'grammar_screen.dart';
import 'flashcard_screen.dart';
import 'quiz_screen.dart';
import 'progress_screen.dart';
import 'profile_screen.dart';
import 'login_screen.dart';
import 'achievements_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const Color primaryColor =
      Color(0xFF4F46E5);

  Widget buildMenuCard({
    required BuildContext context,
    required String title,
    required IconData icon,
    required Widget screen,
  }) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => screen,
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius:
              BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withAlpha(15),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 40,
              color: primaryColor,
            ),
            const SizedBox(height: 12),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontWeight:
                    FontWeight.bold,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> logout(
      BuildContext context) async {
    await AuthService().logout();
// ignore: use_build_context_synchronously
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (_) =>
            const LoginScreen(),
      ),
      (route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          const Color(0xFFF5F7FB),

      appBar: AppBar(
        elevation: 0,
        backgroundColor: primaryColor,
        title: const Text(
          "LinguaMaster",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon:
                const Icon(Icons.logout),
            onPressed: () =>
                logout(context),
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding:
                  const EdgeInsets.all(24),
              decoration:
                  const BoxDecoration(
                color: primaryColor,
                borderRadius:
                    BorderRadius.only(
                  bottomLeft:
                      Radius.circular(30),
                  bottomRight:
                      Radius.circular(30),
                ),
              ),
              child: Row(
  crossAxisAlignment:
      CrossAxisAlignment.start,
  children: [
    Expanded(
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start,
        children: [
          const Text(
            "Good Afternoon 👋",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),

          const SizedBox(height: 8),

          const Text(
            "Zohaib",
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight:
                  FontWeight.bold,
            ),
          ),

          const SizedBox(height: 10),

          const Text(
            "Continue learning and improve your language skills.",
            style: TextStyle(
              color: Colors.white70,
              fontSize: 15,
            ),
          ),

          const SizedBox(height: 15),

          Container(
            padding:
                const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 8,
            ),

            decoration: BoxDecoration(
              color: Colors.white24,
              borderRadius:
                  BorderRadius.circular(
                      20),
            ),

            child: const Row(
              mainAxisSize:
                  MainAxisSize.min,
              children: [
                Icon(
                  Icons
                      .local_fire_department,
                  color: Colors.orange,
                ),

                SizedBox(width: 5),

                Text(
                  "5 Day Streak",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight:
                        FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),

    const CircleAvatar(
      radius: 30,
      backgroundColor:
          Colors.white,

      child: Icon(
        Icons.person,
        size: 35,
        color: Color(0xFF4F46E5),
      ),
    ),
  ],
),
            ),

            Padding(
              padding:
                  const EdgeInsets.all(20),
              child: Column(
              
children: [

  // Word Of The Day Card
  GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) =>
              const WordOfDayScreen(),
        ),
      );
    },
    child: Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(
  24,
  20,
  24,
  35,
),
      decoration: BoxDecoration(
  gradient: LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Color(0xFF4F46E5),
      Color(0xFF7C3AED),
    ],
  ),
        borderRadius:
            BorderRadius.circular(20),
      ),
      child: const Row(
        children: [
          Icon(
            Icons.auto_awesome,
            color: Colors.white,
            size: 35,
          ),
          SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start,
              children: [
                Text(
                  "Word of the Day",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight:
                        FontWeight.bold,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  "Tap to discover today's word",
                  style: TextStyle(
                    color: Colors.white70,
                  ),
                ),
              ],
            ),
          ),
          Icon(
            Icons.arrow_forward_ios,
            color: Colors.white,
          ),
        ],
      ),
    ),
  ),

  const SizedBox(height: 20),

  // Statistics Cards
  Row(
    children: [
      Expanded(
        child: Container(
          padding:
              const EdgeInsets.all(18),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius:
                BorderRadius.circular(
                    20),
          ),
          child: const Column(
            children: [
              Text(
                "25",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight:
                      FontWeight.bold,
                ),
              ),
              SizedBox(height: 4),
              Text(
                "Words Learned",
              ),
            ],
          ),
        ),
      ),

      const SizedBox(width: 12),

      Expanded(
        child: Container(
          padding:
              const EdgeInsets.all(18),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius:
                BorderRadius.circular(
                    20),
          ),
          child: const Column(
            children: [
              Text(
                "80%",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight:
                      FontWeight.bold,
                ),
              ),
              SizedBox(height: 4),
              Text(
                "Quiz Score",
              ),
            ],
          ),
        ),
      ),
    ],
  ),

  const SizedBox(height: 25),

  GridView.count(
    shrinkWrap: true,
    physics:
        const NeverScrollableScrollPhysics(),
    crossAxisCount: 2,
    crossAxisSpacing: 15,
    mainAxisSpacing: 15,
    childAspectRatio: 1.1,
    children: [
      buildMenuCard(
        context: context,
        title: "Vocabulary",
        icon: Icons.menu_book,
        screen: LessonsScreen(),
      ),

      buildMenuCard(
        context: context,
        title: "Grammar",
        icon: Icons.school,
        screen: const GrammarScreen(),
      ),

      buildMenuCard(
        context: context,
        title: "Flashcards",
        icon: Icons.style,
        screen: const FlashcardScreen(),
      ),

      buildMenuCard(
        context: context,
        title: "Daily Quiz",
        icon: Icons.quiz,
        screen: const QuizScreen(),
      ),

      buildMenuCard(
        context: context,
        title: "Progress",
        icon: Icons.bar_chart,
        screen: const ProgressScreen(),
      ),
      buildMenuCard(
  context: context,
  title: "Achievements",
  icon: Icons.emoji_events,
  screen: const AchievementsScreen(),
),
      buildMenuCard(
        context: context,
        title: "Profile",
        icon: Icons.person,
        screen: const ProfileScreen(),
      ),
    ],
  ),
]
              ),
            ),
          ],
        ),
      ),
    );
  }
}