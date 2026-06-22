import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ProfileScreen
    extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final user =
        FirebaseAuth.instance.currentUser;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Profile",
        ),
      ),
      body: Padding(
        padding:
            const EdgeInsets.all(20),
        child: Column(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundColor:
                  Colors.indigo,
              child: Text(
                user?.email?[0]
                        .toUpperCase() ??
                    "U",
                style:
                    const TextStyle(
                  color:
                      Colors.white,
                  fontSize: 40,
                ),
              ),
            ),

            const SizedBox(
                height: 20),

            Text(
              user?.email ?? "",
              style:
                  const TextStyle(
                fontSize: 18,
                fontWeight:
                    FontWeight.bold,
              ),
            ),

            const SizedBox(
                height: 30),

            Card(
              child: ListTile(
                leading:
                    const Icon(
                  Icons.school,
                ),
                title: const Text(
                  "Lessons Completed",
                ),
                trailing:
                    const Text("12"),
              ),
            ),

            Card(
              child: ListTile(
                leading:
                    const Icon(
                  Icons.quiz,
                ),
                title: const Text(
                  "Quiz Score",
                ),
                trailing:
                    const Text("80%"),
              ),
            ),

            Card(
              child: ListTile(
                leading:
                    const Icon(
                  Icons.local_fire_department,
                ),
                title: const Text(
                  "Learning Streak",
                ),
                trailing:
                    const Text(
                        "5 Days"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}