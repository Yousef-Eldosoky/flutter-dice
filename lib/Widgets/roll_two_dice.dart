import 'package:dice/Widgets/dice.dart';
import 'package:flutter/material.dart';

class RollTwoDice extends StatelessWidget {
  const RollTwoDice({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Image(
                height: 160,
                image:
                    AssetImage("assets/Dice-${Dice.getRandomNum()}-b.svg.png"),
              ),
            )
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Image(
                height: 160,
                image:
                    AssetImage("assets/Dice-${Dice.getRandomNum()}-b.svg.png"),
              ),
            ),
            const Spacer(),
          ],
        ),
      ],
    );
  }
}
