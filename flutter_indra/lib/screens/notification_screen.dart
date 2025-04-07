import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 245, 245, 245),
      appBar: AppBar(
        title: Text("My Notifications"),
        backgroundColor: const Color.fromARGB(255, 45, 226, 51),
        foregroundColor: const Color.fromARGB(255, 248, 245, 245),
      ),
      body: Column(
        children: [
          Notification(
            title: "eSewa",
            subtitle:
                "Dear indra chhedal, you have logged in from techno mobile on 2025-03-31 22:26 NPT.",
          ),
          Notification(
            title: "eSewa",
            subtitle:
                "Dear indra chhedal, you have logged in from techno mobile on 2025-03-31 22:26 NPT.",
          ),
          Notification(
            title: "eSewa",
            subtitle:
                "Dear indra chhedal, you have logged in from techno mobile on 2025-03-31 22:26 NPT.",
          ),
        ],
      ),
    );
  }
}

class Notification extends StatelessWidget {
  final String title;
  final String subtitle;

  const Notification({super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(6),
      padding: EdgeInsets.all(10),
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 255, 255),
        borderRadius: BorderRadius.circular(8),
      ),
      child: ListTile(title: Text(title), subtitle: Text(subtitle)),
    );
  }
}
