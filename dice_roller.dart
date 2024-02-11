import 'dart:math';
import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {

  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }

}

class _DiceRollerState extends State<DiceRoller>{
  var currentDiceRoll = 4;

  void rollDice() {
    setState(() {
      currentDiceRoll = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
            Image.asset(
              'assests/images/dice-images/dice-$currentDiceRoll.png',
              width: 200,
            ),

            const SizedBox(height: 150),
            
            ElevatedButton(
              onPressed: rollDice, 
              style: TextButton.styleFrom(
                      foregroundColor: Colors.black,
                      textStyle: const TextStyle( 
                                        fontSize: 28,
                                        fontWeight: FontWeight.bold,
                                      ),
                    ),
              child: const Text('Roll Dice')
            ),
      ],
    );
  }
}
