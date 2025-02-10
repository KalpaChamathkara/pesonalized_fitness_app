import 'package:flutter/material.dart';
import 'package:pesonalized_fitness_app/screens/Home_pages/privacySecurity%20page.dart';
import 'package:pesonalized_fitness_app/screens/Home_pages/profile%20page.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 144, 142, 235),
        foregroundColor: Colors.white,
        elevation: 1,
        centerTitle: true,
        title: const Text(
          "Settings",
          style: TextStyle(
            fontFamily: "Poppins",
            fontSize: 22,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            _buildSettingsCard(
              context,
              title: "Profile",
              icon: Icons.person,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ProfilePage()),
                );
              },
            ),
            _buildSettingsCard(
              context,
              title: "Notification Settings",
              icon: Icons.notifications,
              trailing: Switch(
                value: true, // Example: Always ON
                onChanged: (bool value) {
                  // Handle notification toggle
                },
              ),
            ),
            _buildSettingsCard(
              context,
              title: "Privacy & Security",
              icon: Icons.lock,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const PrivacySecurityPage()),
                );
              },
            ),
            _buildSettingsCard(
              context,
              title: "About App",
              icon: Icons.info,
              onTap: () {
                // Navigate to about page
              },
            ),
            const SizedBox(height: 20),
            _buildLogoutButton(context), // Logout button with confirmation
          ],
        ),
      ),
    );
  }

  // ------------------ Settings Card ------------------
  Widget _buildSettingsCard(BuildContext context,
      {required String title, required IconData icon, Widget? trailing, VoidCallback? onTap}) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        leading: Icon(icon, color: Colors.black87),
        title: Text(
          title,
          style: const TextStyle(
            fontFamily: "Poppins",
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Colors.black87,
          ),
        ),
        trailing: trailing ?? const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.black54),
        onTap: onTap,
      ),
    );
  }

  // ------------------ Logout Button ------------------
  Widget _buildLogoutButton(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.redAccent,
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      onPressed: () {
        _showLogoutDialog(context);
      },
      child: const Text(
        "Logout",
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
    );
  }

  // ------------------ Logout Confirmation Dialog ------------------
  void _showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Logout"),
          content: const Text("Are you sure you want to log out?"),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("Cancel"),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 184, 183, 238)),
              onPressed: () {
                Navigator.pop(context);
                // Implement actual logout functionality
              },
              child: const Text("Logout"),
            ),
          ],
        );
      },
    );
  }
}
