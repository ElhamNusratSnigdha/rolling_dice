import 'package:flutter/material.dart';
import 'package:rolling_dice/dice_roller.dart';

class Home extends StatelessWidget {

  //Constructor Class
  const Home({super.key,
      required this.colors,
      required this.startA,
      required this.endA});

  final List<Color> colors;
  final Alignment startA;
  final Alignment endA;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: startA,
          end: endA,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
