import 'package:flutter/material.dart';

class ProgressTrackingPage extends StatelessWidget {
  const ProgressTrackingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Progress Tracking"),
        backgroundColor: const Color.fromARGB(255, 144, 142, 235),
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "📊 Your Fitness Progress",
              style: TextStyle(
                fontFamily: "Poppins",
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 10),
            _buildFeatureCard(
              title: "📅 Weekly Reports",
              description: "Check your fitness improvements each week.",
              icon: Icons.calendar_today,
            ),
            _buildFeatureCard(
              title: "📈 Monthly Performance",
              description: "Analyze your long-term progress with monthly insights.",
              icon: Icons.show_chart,
            ),
            _buildFeatureCard(
              title: "🏆 Achievements",
              description: "See the milestones you've reached in your journey.",
              icon: Icons.emoji_events,
            ),
            _buildFeatureCard(
              title: "🔥 Best Streaks",
              description: "Track your longest streaks of consistency.",
              icon: Icons.local_fire_department,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFeatureCard({
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
