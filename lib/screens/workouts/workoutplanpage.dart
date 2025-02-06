import 'package:flutter/material.dart';

class WorkoutPlansPage extends StatelessWidget {
  const WorkoutPlansPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Workout Plans",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        backgroundColor: Color.fromARGB(255, 184, 183, 238),
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _buildWorkoutCard(
            title: "Custom Workouts",
            description:
                "Personalized workout plans based on your fitness level.",
            icon: Icons.fitness_center,
          ),
          _buildWorkoutCard(
            title: "Strength Training",
            description: "Improve muscle strength and endurance.",
            icon: Icons.sports_gymnastics,
          ),
          _buildWorkoutCard(
            title: "Cardio Workouts",
            description: "Enhance heart health and stamina.",
            icon: Icons.directions_run,
          ),
          _buildWorkoutCard(
            title: "Yoga Sessions",
            description:
                "Relax and improve flexibility with guided yoga routines.",
            icon: Icons.self_improvement,
          ),
          _buildWorkoutCard(
            title: "HIIT Routines",
            description:
                "Burn fat and build endurance with high-intensity workouts.",
            icon: Icons.flash_on,
          ),
          _buildWorkoutCard(
            title: "Progress Tracking",
            description: "Track completed workouts and measure performance.",
            icon: Icons.track_changes,
          ),
        ],
      ),
    );
  }

  Widget _buildWorkoutCard({
    required String title,
    required String description,
    required IconData icon,
  }) {
    return Card(
      elevation: 3,
      margin: const EdgeInsets.symmetric(vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: ListTile(
        contentPadding: const EdgeInsets.all(15),
        leading:
            Icon(icon, size: 40, color: Color.fromARGB(255, 144, 142, 235)),
        title: Text(
          title,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(description, style: const TextStyle(fontSize: 14)),
        trailing: const Icon(Icons.arrow_forward_ios,
            color: Color.fromARGB(255, 144, 142, 235)),
        onTap: () {}, // Can be linked to specific workout details page
      ),
    );
  }
}
