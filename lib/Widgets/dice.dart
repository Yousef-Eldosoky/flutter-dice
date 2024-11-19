import 'dart:math'; // Importing dart:math for generating random numbers.

import 'package:dice/Widgets/roll_three_dice.dart'; // Importing custom widget for rolling three dice.
import 'package:dice/Widgets/roll_two_dice.dart'; // Importing custom widget for rolling two dice.
import 'package:flutter/material.dart'; // Importing Flutter's material package for UI components.

class Dice extends StatelessWidget {
  const Dice({super.key, required this.diceNum}); // Constructor with the required diceNum parameter.

  final int diceNum; // Determines the number of dice to roll/display.

  // Method to generate a random number between 1 and 6 (inclusive).
  static int getRandomNum() {
    return Random().nextInt(6) + 1; // Random().nextInt(6) generates values from 0-5, so +1 shifts to 1-6.
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20), // Add uniform padding around the widget.
      child: SizedBox(
        height: 400, // Set a fixed height for the dice display area.
        child: switch (diceNum) {
          // Using a switch expression to determine the UI based on the number of dice.
          1 => Image(
              // Display a single dice image.
              image: AssetImage("assets/Dice-${getRandomNum()}-b.svg.png") // Load a random dice image.
          ),
          2 => RollTwoDice(), // Use a custom widget to display two dice.
          3 => RollThreeDice(), // Use a custom widget to display three dice.
          _ => const Text("Waiting to roll the dice...") // Default message when no dice number is selected.
        },
      ),
    );
  }
}
