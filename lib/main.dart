// ignore_for_file: prefer_match_file_name
import 'package:flutter/material.dart';
import 'package:flutter_color_generation/app/components/random_color_screen.dart';

void main() {
  runApp(const MyApp());
}

/// The root widget of the application.
class MyApp extends StatelessWidget {
  /// Creates an instance of MyApp.
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: RandomColorScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
