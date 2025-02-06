import 'package:flutter/material.dart';

class MealPlansPage extends StatelessWidget {
  const MealPlansPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Meal Plans"),
        backgroundColor: const Color.fromARGB(255, 144, 142, 235),
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _buildFeatureCard(
            title: "🍽️ Daily Meal Plans",
            description: "Personalized meal suggestions based on your goals.",
            icon: Icons.fastfood,
          ),
          _buildFeatureCard(
            title: "📊 Calorie & Macro Tracking",
            description: "Monitor your daily intake effortlessly.",
            icon: Icons.bar_chart,
          ),
          _buildFeatureCard(
            title: "🥗 Healthy Recipes",
            description: "Get recipes with nutritional breakdowns.",
            icon: Icons.restaurant_menu,
          ),
        ],
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
      margin: const EdgeInsets.symmetric(vertical: 10),
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
