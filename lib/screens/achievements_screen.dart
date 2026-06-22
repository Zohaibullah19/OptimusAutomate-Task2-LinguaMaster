import 'package:flutter/material.dart';

class AchievementsScreen extends StatelessWidget {
  const AchievementsScreen({super.key});

  Widget achievementCard({
    required String title,
    required String subtitle,
    required IconData icon,
    required Color color,
    required bool unlocked,
  }) {
    return Card(
      elevation: 4,
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: color,
          child: Icon(
            icon,
            color: Colors.white,
          ),
        ),
        title: Text(title),
        subtitle: Text(subtitle),
        trailing: Icon(
          unlocked
              ? Icons.check_circle
              : Icons.lock,
          color: unlocked
              ? Colors.green
              : Colors.grey,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          const Color(0xFFF5F7FB),

      appBar: AppBar(
        title:
            const Text("Achievements"),
        backgroundColor:
            const Color(0xFF4F46E5),
        foregroundColor: Colors.white,
      ),

      body: Padding(
        padding:
            const EdgeInsets.all(16),
        child: Column(
          children: [
            achievementCard(
              title:
                  "Beginner Learner",
              subtitle:
                  "Complete your first lesson",
              icon: Icons.school,
              color: Colors.blue,
              unlocked: true,
            ),

            achievementCard(
              title:
                  "Vocabulary Explorer",
              subtitle:
                  "Learn 25 words",
              icon: Icons.menu_book,
              color: Colors.orange,
              unlocked: true,
            ),

            achievementCard(
              title:
                  "Quiz Champion",
              subtitle:
                  "Score 80% in a quiz",
              icon: Icons.quiz,
              color: Colors.green,
              unlocked: true,
            ),

            achievementCard(
              title:
                  "7-Day Streak",
              subtitle:
                  "Practice for 7 days",
              icon: Icons.local_fire_department,
              color: Colors.red,
              unlocked: false,
            ),

            achievementCard(
              title:
                  "Language Master",
              subtitle:
                  "Learn 100 words",
              icon: Icons.emoji_events,
              color: Colors.purple,
              unlocked: false,
            ),
          ],
        ),
      ),
    );
  }
}