import 'package:flutter/material.dart';
import 'package:pesonalized_fitness_app/screens/Home_pages/guidance.dart';
import 'package:pesonalized_fitness_app/screens/Home_pages/notification.dart';
import 'package:pesonalized_fitness_app/screens/Home_pages/settings.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  // List of pages for navigation
  final List<Widget> _pages = [
    const HomePage(),
    const GuidancePage(),
    const NotificationsPage(),
    const SettingsPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: const Color.fromARGB(255, 144, 142, 235),
        unselectedItemColor: Colors.grey,
        selectedFontSize: 14,
        unselectedFontSize: 12,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.play_circle_fill),
            label: "Guidance",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: "Notifications",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
        ],
      ),
    );
  }
}

// ------------------ Home Page ------------------

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        elevation: 1,
        centerTitle: true,
        automaticallyImplyLeading: false, // Removes back button
        flexibleSpace:
            _buildWelcomeSection(), // Adds welcome section inside the AppBar
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          // Workout Categories Section
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "📂 Workout Categories",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 50, // Fixed height for better UX
                child: SingleChildScrollView(
                  scrollDirection:
                      Axis.horizontal, // Enables horizontal scrolling
                  child: Row(
                    children: _buildHorizontalChipList(
                      [
                        "Strength",
                        "Cardio",
                        "Yoga",
                        "HIIT",
                        "Pilates",
                        "CrossFit"
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          _buildFeatureCard(
            title: "🏋️ Customizable Workouts",
            description:
                "Personalized plans based on your fitness level and goals.",
            icon: Icons.fitness_center,
            onTap: () {},
          ),

          _buildFeatureCard(
            title: "🥗 Daily Meal Plans",
            description: "Meal plans to support your fitness journey.",
            icon: Icons.fastfood,
            onTap: () {},
          ),
          _buildFeatureCard(
            title: "📊 Calorie & Macro Tracking",
            description: "Monitor your calorie intake effortlessly.",
            icon: Icons.bar_chart,
            onTap: () {},
          ),
          _buildFeatureCard(
            title: "🍽️ Recipe Suggestions",
            description: "Healthy recipes with nutritional breakdowns.",
            icon: Icons.restaurant_menu,
            onTap: () {},
          ),
          _buildFeatureCard(
            title: "📈 Progress Tracking",
            description: "Track workouts, set goals, and monitor progress.",
            icon: Icons.track_changes,
            onTap: () {},
          ),
        ],
      ),
    );
  }

  Widget _buildWelcomeSection() {
    return const Padding(
      padding:
          EdgeInsets.symmetric(horizontal: 16, vertical: 10), // Add spacing
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center, // Center content
        mainAxisAlignment: MainAxisAlignment.center, // Center vertically
        children: [
          Text(
            "Welcome to Gordon Fitness App ",
            textAlign: TextAlign.center, // Center text
            style: TextStyle(
              fontFamily: "Poppins",
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.black87,
            ),
          ),
          SizedBox(height: 8),
          Text(
            "Your journey to a healthier life starts now!",
            textAlign: TextAlign.center, // Center text
            style: TextStyle(
                fontFamily: "Poppins",
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Colors.black54),
          ),
        ],
      ),
    );
  }

  Widget _buildFeatureCard({
    required String title,
    required String description,
    required IconData icon,
    VoidCallback? onTap,
    Widget? extraWidget,
  }) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.symmetric(vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        contentPadding: const EdgeInsets.all(15),
        leading: CircleAvatar(
          backgroundColor: Colors.blueAccent,
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
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              description,
              style: const TextStyle(fontSize: 14, color: Colors.black54),
            ),
            if (extraWidget != null)
              Padding(
                  padding: const EdgeInsets.only(top: 5), child: extraWidget),
          ],
        ),
        trailing: onTap != null
            ? IconButton(
                icon: const Icon(Icons.arrow_forward_ios, size: 18),
                onPressed: onTap,
              )
            : null,
      ),
    );
  }

  Widget _buildChipList(List<String> items) {
    return Wrap(
      spacing: 8,
      children: items
          .map((item) => Chip(
                label: Text(
                  item,
                  style: const TextStyle(fontSize: 14, color: Colors.white),
                ),
                backgroundColor: Colors.blueAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ))
          .toList(),
    );
  }

  // Helper function to generate chips horizontally
  List<Widget> _buildHorizontalChipList(List<String> items) {
    return items
        .map((item) => Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 6), // Adds spacing
              child: Chip(
                label: Text(
                  item,
                  style: const TextStyle(fontSize: 14, color: Colors.white),
                ),
                backgroundColor: Colors.blueAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ))
        .toList();
  }
}
