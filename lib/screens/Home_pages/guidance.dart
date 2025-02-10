import 'package:flutter/material.dart';

// ------------------ Video & Audio Guidance Page ------------------
class GuidancePage extends StatelessWidget {
  const GuidancePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Guidance Content",
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
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSectionTitle("🎥 Video Guidance"),
            _buildContentCard(
              title: "Full-Body Workout",
              description: "Follow a guided session for a complete workout.",
              icon: Icons.video_collection,
            ),
            _buildContentCard(
              title: "Yoga for Relaxation",
              description: "A calming yoga session to reduce stress.",
              icon: Icons.self_improvement,
            ),
            const SizedBox(height: 20),
            _buildSectionTitle("🎧 Audio Guidance"),
            _buildContentCard(
              title: "Motivational Podcast",
              description: "Stay motivated with expert fitness advice.",
              icon: Icons.audiotrack,
            ),
            _buildContentCard(
              title: "Guided Meditation",
              description: "A soothing meditation to clear your mind.",
              icon: Icons.headset_mic,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Text(
        title,
        style: const TextStyle(
          fontFamily: "Poppins",
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: Colors.black87,
        ),
      ),
    );
  }

  Widget _buildContentCard({
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
