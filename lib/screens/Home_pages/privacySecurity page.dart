import 'package:flutter/material.dart';

class PrivacySecurityPage extends StatelessWidget {
  const PrivacySecurityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Privacy & Security", style: TextStyle(
          fontFamily: "Poppins",
          fontSize: 22,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),),
        backgroundColor: const Color.fromARGB(255, 144, 142, 235),
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _buildSectionTitle("🔒 Security Settings"),
          _buildListTile(
            title: "Change Password",
            icon: Icons.lock,
            onTap: () {
              // Add password change functionality
            },
          ),
          _buildListTile(
            title: "Enable Two-Factor Authentication",
            icon: Icons.verified_user,
            onTap: () {
              // Add 2FA functionality
            },
          ),
          _buildListTile(
            title: "Manage Devices",
            icon: Icons.devices,
            onTap: () {
              // Add device management functionality
            },
          ),
          const Divider(),

          _buildSectionTitle("🔐 Privacy Preferences"),
          _buildListTile(
            title: "App Permissions",
            icon: Icons.security,
            onTap: () {
              // Navigate to app permissions settings
            },
          ),
          _buildListTile(
            title: "Data Usage & Collection",
            icon: Icons.data_usage,
            onTap: () {
              // Navigate to data collection settings
            },
          ),
          _buildListTile(
            title: "Clear App Data",
            icon: Icons.delete_forever,
            onTap: () {
              // Add functionality to clear app data
            },
          ),
          const Divider(),

          _buildSectionTitle("📜 Legal"),
          _buildListTile(
            title: "Terms & Conditions",
            icon: Icons.article,
            onTap: () {
              // Open Terms & Conditions page
            },
          ),
          _buildListTile(
            title: "Privacy Policy",
            icon: Icons.policy,
            onTap: () {
              // Open Privacy Policy page
            },
          ),
        ],
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

  Widget _buildListTile({
    required String title,
    required IconData icon,
    required VoidCallback onTap,
  }) {
    return ListTile(
      leading: Icon(icon, color: const Color.fromARGB(255, 184, 183, 238)),
      title: Text(
        title,
        style: const TextStyle(
          fontFamily: "Poppins",
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: Colors.black87,
        ),
      ),
      trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      onTap: onTap,
    );
  }
}
