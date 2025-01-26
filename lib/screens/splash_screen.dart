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
    // Simulate a delay to show the splash screen
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) {
          return const LoadingScreen1(); // Replace with your home screen widget
        }),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo or App Icon
            Image.asset(
              'assets/logo.png', // Place your app logo in the assets folder
              width: 150,
              height: 150,
            ),
            const SizedBox(height: 20),
            // App Name
            const Text(
              'FitTrack',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 10),
            // Tagline or slogan
            const Text(
              'Your Personalized Fitness Journey',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w300,
                color: Colors.black54,
              ),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
