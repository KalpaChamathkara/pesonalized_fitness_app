import 'package:flutter/material.dart';

// ------------------ Video & Audio Guidance Page ------------------
class GuidancePage extends StatelessWidget {
  const GuidancePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Guidance",
          style: TextStyle(
            fontFamily: "Poppins",
            fontSize: 22,
            fontWeight: FontWeight.w600,
            color: Colors.black87,
          ),
        ),
      ),
      body: const Center(
        child: Text(
          "Video & Audio Guidance Content",
          style: TextStyle(fontSize: 18, color: Colors.black87),
        ),
      ),
    );
  }
}
