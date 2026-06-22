import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {
  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Progress Tracker"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: const [
            Card(
              child: ListTile(
                leading: Icon(Icons.school),
                title: Text("Words Learned"),
                trailing: Text("25"),
              ),
            ),

            Card(
              child: ListTile(
                leading: Icon(Icons.quiz),
                title: Text("Quiz Score"),
                trailing: Text("80%"),
              ),
            ),

            Card(
              child: ListTile(
                leading: Icon(Icons.local_fire_department),
                title: Text("Daily Streak"),
                trailing: Text("5 Days"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}