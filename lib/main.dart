import 'package:flutter/material.dart';
import 'package:flutter_application_1/OnboardingPage.dart';
void main() {
  runApp(OnboardingApp());
}

class OnboardingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Onboarding Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: OnboardingPage1(), // Start with the first onboarding page
    );
  }
}