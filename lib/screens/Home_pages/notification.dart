import 'package:flutter/material.dart';

// ------------------ Notifications Page ------------------
class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Notifications",
          style: TextStyle(
            fontFamily: "Poppins",
            fontSize: 22,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 144, 142, 235),
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _buildNotificationCard(
            title: "Workout Reminder",
            description: "Time for your daily workout session!",
            icon: Icons.fitness_center,
          ),
          _buildNotificationCard(
            title: "Meal Plan Alert",
            description: "Don't forget to follow today's healthy meal plan.",
            icon: Icons.restaurant,
          ),
          _buildNotificationCard(
            title: "Hydration Reminder",
            description: "Drink water and stay hydrated! 💧",
            icon: Icons.local_drink,
          ),
          _buildNotificationCard(
            title: "Weekly Progress Update",
            description: "Check out your weekly fitness summary!",
            icon: Icons.bar_chart,
          ),
        ],
      ),
    );
  }

  Widget _buildNotificationCard({
    required String title,
    required String description,
    required IconData icon,
  }) {
    return Card(
      elevation: 3,
      margin: const EdgeInsets.symmetric(vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        contentPadding: const EdgeInsets.all(15),
        leading: CircleAvatar(
          backgroundColor: const Color.fromARGB(255, 144, 142, 235),
          child: Icon(icon, color: Colors.white),
        ),
        title: Text(
          title,
          style: const TextStyle(
            fontFamily: "Poppins",
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.black87,
          ),
        ),
        subtitle: Text(
          description,
          style: const TextStyle(fontSize: 14, color: Colors.black54),
        ),
      ),
    );
  }
}
