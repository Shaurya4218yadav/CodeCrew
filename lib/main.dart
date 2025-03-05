import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/onboarding_screen.dart';
import 'screens/match_screen.dart';
import 'services/user_service.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => UserService()),
      ],
      child: const CodeCrewApp(), // Use const here
    ),
  );
}

class CodeCrewApp extends StatelessWidget {
  const CodeCrewApp({Key? key}) : super(key: key); // Add key parameter

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CodeCrew',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        appBarTheme: const AppBarTheme( // Add const here
          color: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      home: const OnboardingScreen(), // Use const here
      routes: {
        '/match': (context) => const MatchScreen(), // Use const here
      },
    );
  }
}