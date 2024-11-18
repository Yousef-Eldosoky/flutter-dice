import 'dart:math';

import 'package:flutter/material.dart';

class Dice extends StatefulWidget {
  const Dice({super.key, required this.diceNum});

  final int diceNum;

  int _getRandomNum() {
    return Random().nextInt(6) + 1;
  }

  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: SizedBox(
          height: 400,
          child: switch (widget.diceNum) {
            1 => Image(
                image: AssetImage(
                    "assets/Dice-${widget._getRandomNum()}-b.svg.png")),
            2 => RollTwoDice(widget: widget),
            _ => const Text("Waiting to roll the dice...")
          }),
    );
  }
}

class RollTwoDice extends StatelessWidget {
  const RollTwoDice({
    super.key,
    required this.widget,
  });

  final Dice widget;

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Row(
            children: [
              const Spacer(),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Image(
                  height: 150,
                  image: AssetImage(
                      "assets/Dice-${widget._getRandomNum()}-b.svg.png"),
                ),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Image(
                  height: 150,
                  image: AssetImage(
                      "assets/Dice-${widget._getRandomNum()}-b.svg.png"),
                ),
              ),
              const Spacer(),
            ],
          ),
        ],
      );
  }
}
