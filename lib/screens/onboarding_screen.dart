import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key); // Add key parameter

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Onboarding')),
      body: const Center(child: Text('Welcome to CodeCrew!')),
    );
  }
}