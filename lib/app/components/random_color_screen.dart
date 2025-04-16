import 'dart:math';
import 'package:flutter/material.dart';

/// A screen that changes background color randomly on tap.
class RandomColorScreen extends StatefulWidget {
  /// Creates a new [RandomColorScreen].
  const RandomColorScreen({super.key});

  @override
  State<RandomColorScreen> createState() => _RandomColorScreenState();
}

/// State for RandomColorScreen.
class _RandomColorScreenState extends State<RandomColorScreen> {
  Color _backgroundColor = Colors.white;

  void _changeColor() {
    final random = Random();
    
    setState(() {
      _backgroundColor = Color.fromARGB(
        255,
        random.nextInt(256),
        random.nextInt(256),
        random.nextInt(256),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _changeColor,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        color: _backgroundColor,
        child: const Center(
          child: Text(
            'Hello there',
            style: TextStyle(
              fontSize: 32, 
              fontWeight: FontWeight.bold, 
              decoration: TextDecoration.none,
            ),
          ),
        ),
      ),
    );
  }
} 
