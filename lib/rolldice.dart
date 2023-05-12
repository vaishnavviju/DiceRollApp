import 'package:flutter/material.dart';
import 'dart:math';

class Dice extends StatefulWidget {
  const Dice({super.key});
  @override
  State<Dice> createState() {
    return _DiceState();
  }
}

class _DiceState extends State<Dice> {
  List dice = [
    'assets/dice-1.png',
    'assets/dice-2.png',
    'assets/dice-3.png',
    'assets/dice-4.png',
    'assets/dice-5.png',
    'assets/dice-6.png'
  ];
  String activeImage = 'assets/dice-1.png';
  void rollDice() {
    var rng = Random();
    setState(() {
      activeImage = dice[rng.nextInt(6)];
    });
  }

  @override
  build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeImage,
          width: 200,
        ),
        const SizedBox(height: 20),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            //padding: const EdgeInsets.only(
            //  top: 28,
            //),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 28,
            ),
          ),
          child: const Text(
            'Roll Dice',
          ),
        ),
      ],
    );
  }
}
