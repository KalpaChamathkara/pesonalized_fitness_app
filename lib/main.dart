import 'package:flutter/material.dart';
import 'package:pesonalized_fitness_app/screens/Home_pages/Home.dart';
import 'screens//loading_screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
