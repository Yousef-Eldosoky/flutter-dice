import 'package:dice/Widgets/dice.dart';
import 'package:flutter/material.dart';

class RollThreeDice extends StatelessWidget {
  const RollThreeDice({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.all(8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image(
                height: 160,
                image:
                    AssetImage("assets/Dice-${Dice.getRandomNum()}-b.svg.png"),
              ),
              Image(
                height: 160,
                image:
                    AssetImage("assets/Dice-${Dice.getRandomNum()}-b.svg.png"),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 1,
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Image(
            height: 160,
            image: AssetImage("assets/Dice-${Dice.getRandomNum()}-b.svg.png"),
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
