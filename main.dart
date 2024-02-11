import 'package:flutter/material.dart';
import 'package:rolling_dice/home.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: Home(
                colors: [
                  Colors.deepOrange, 
                  Colors.orange,
                  Colors.orangeAccent],
                startA: Alignment.bottomCenter,
                endA: Alignment.bottomCenter,
              ),
      ),
    ),
  );
}
