import 'package:flutter/material.dart';

class MatchScreen extends StatelessWidget {
  const MatchScreen({Key? key}) : super(key: key); // Add key parameter

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Match Screen')),
      body: const Center(child: Text('This is the Match Screen!')),
    );
  }
}