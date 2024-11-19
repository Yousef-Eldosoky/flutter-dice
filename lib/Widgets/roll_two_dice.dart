import 'package:dice/Widgets/dice.dart'; // Importing the Dice widget to use its utility method.
import 'package:flutter/material.dart'; // Importing Flutter's material package for UI components.

class RollTwoDice extends StatelessWidget {
  const RollTwoDice({super.key}); // Stateless widget for rolling and displaying two dice.

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 10, // Adds a small spacing at the top of the column.
        ),
        // First row displaying the first dice.
        Row(
          children: [
            const Spacer(), // Pushes the dice image to the right edge of the row.
            Padding(
              padding: const EdgeInsets.all(10), // Adds padding around the dice image.
              child: Image(
                height: 160, // Sets the height for the dice image.
                image: AssetImage(
                    "assets/Dice-${Dice.getRandomNum()}-b.svg.png"), // Loads a random dice image.
              ),
            ),
          ],
        ),
        // Second row displaying the second dice.
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(10), // Adds padding around the dice image.
              child: Image(
                height: 160, // Sets the height for the dice image.
                image: AssetImage(
                    "assets/Dice-${Dice.getRandomNum()}-b.svg.png"), // Loads another random dice image.
              ),
            ),
            const Spacer(), // Pushes the dice image to the left edge of the row.
          ],
        ),
      ],
    );
  }
}
