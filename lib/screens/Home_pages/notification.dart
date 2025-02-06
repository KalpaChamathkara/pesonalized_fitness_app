import 'package:flutter/material.dart';

// ------------------ Notifications Page ------------------
class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Notifications",
          style: TextStyle(
            fontFamily: "Poppins",
            fontSize: 22,
            fontWeight: FontWeight.w600,
            color: Colors.black87,
          ),
        ),
      ),
      body: const Center(
        child: Text(
          "No new notifications",
          style: TextStyle(fontSize: 18, color: Colors.black87),
        ),
      ),
    );
  }
}
