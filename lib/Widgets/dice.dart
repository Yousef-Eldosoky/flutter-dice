import 'dart:math';

import 'package:dice/Widgets/roll_three_dice.dart';
import 'package:dice/Widgets/roll_two_dice.dart';
import 'package:flutter/material.dart';

class Dice extends StatelessWidget {
  const Dice({super.key, required this.diceNum});

  final int diceNum;

  // get random numbers
  static int getRandomNum() {
    return Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: SizedBox(
          height: 400,
          child: switch (diceNum) { // switch to diced how many dice will appear
            1 => Image(
                image: AssetImage("assets/Dice-${getRandomNum()}-b.svg.png")),
            2 => RollTwoDice(),
            3 => RollThreeDice(),
            _ => const Text("Waiting to roll the dice...")
          }),
    );
  }
}
