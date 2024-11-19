import 'package:dice/Widgets/dice.dart'; // Importing the Dice widget to use its utility method.
import 'package:flutter/material.dart'; // Importing Flutter's material package for UI components.

class RollThreeDice extends StatelessWidget {
  const RollThreeDice({super.key}); // Stateless widget for rolling and displaying three dice.

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 30, // Adds spacing at the top of the column.
        ),
        Padding(
          padding: const EdgeInsets.all(8), // Adds padding around the row.
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween, // Distributes dice evenly across the row.
            children: [
              Image(
                height: 160, // Sets the height for the dice image.
                image: AssetImage(
                    "assets/Dice-${Dice.getRandomNum()}-b.svg.png"), // Loads a random dice image.
              ),
              Image(
                height: 160, // Sets the height for the dice image.
                image: AssetImage(
                    "assets/Dice-${Dice.getRandomNum()}-b.svg.png"), // Loads another random dice image.
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 1, // Small spacing between rows.
        ),
        Padding(
          padding: const EdgeInsets.all(10), // Adds padding around the third dice image.
          child: Image(
            height: 160, // Sets the height for the third dice image.
            image: AssetImage(
                "assets/Dice-${Dice.getRandomNum()}-b.svg.png"), // Loads the third random dice image.
          ),
        ),
        const Spacer(), // Fills remaining space to align content at the top.
      ],
    );
  }
}
