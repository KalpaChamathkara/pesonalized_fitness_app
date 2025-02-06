import 'package:flutter/material.dart';
import 'package:pesonalized_fitness_app/screens/loading_screens/loading_screen2.dart';

class LoadingScreen1 extends StatefulWidget {
  const LoadingScreen1({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LoadingScreen1State createState() => _LoadingScreen1State();
}

class _LoadingScreen1State extends State<LoadingScreen1>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeInAnimation;

  @override
  void initState() {
    super.initState();

    // Animation setup
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..forward();
    _fadeInAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeIn),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // App Logo with fade-in animation
                  FadeTransition(
                    opacity: _fadeInAnimation,
                    child: Image.asset(
                      'assets/images/screen1.jpg',
                      width: 180,
                      height: 180,
                    ),
                  ),
                  const SizedBox(height: 30),
                  // Descriptive text with better alignment and padding
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text(
                      'Track your progress and achieve your fitness goals effortlessly !',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 22,
                        color: Color.fromARGB(255, 56, 56, 56),
                        fontWeight: FontWeight.w300,
                        height: 1.5, // Better line spacing
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Elevated Button moved to the bottom
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const LoadingScreen2()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(
                    255, 184, 183, 238), // Button background
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
                  'Next',
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
        ],
      ),
    );
  }
}
