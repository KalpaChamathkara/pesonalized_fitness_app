// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:pesonalized_fitness_app/screens/loading_screen1.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _splashScreenState createState() => _splashScreenState();
}

class _splashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Center content with logo and text
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Logo or App Icon
                  Image.asset(
                    'assets/images/appLogo.png', // Place your app logo in the assets folder
                    width: 300,
                    height: 300,
                  ),
                  const SizedBox(height: 10),
                  // Tagline or slogan
                  const Text(
                    'Your Personalized Fitness Journey',
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 20,
                      color: Colors.black87,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Navigate button at the bottom
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const LoadingScreen1()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(
                    255, 144, 142, 235), // Button background
                foregroundColor: Colors.white, // Button text color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20), // Rounded corners
                ),
                padding: const EdgeInsets.symmetric(
                    vertical: 15), // Adjusted padding
              ),
              child: const SizedBox(
                width: double.infinity, // Button spans the width of the screen
                child: Text(
                  'Get Started',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 30), // Add some spacing at the bottom
        ],
      ),
    );
  }
}
