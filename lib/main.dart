import 'package:flutter/material.dart';
import 'package:untitled/views/home_screen.dart';


void main() {
  runApp(const EmergencyApp());
}

class EmergencyApp extends StatelessWidget {
  const EmergencyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Emergency App',
      home: EmergencyHomePage(),
    );
  }
}
