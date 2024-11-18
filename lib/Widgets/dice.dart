import 'package:flutter/material.dart';

class Dice extends StatefulWidget {
  const Dice({super.key, required this.num});

  final int? num;

  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  @override
  Widget build(BuildContext context) {
    return widget.num != null ? Image(image: AssetImage("assets/Dice-${widget.num}-b.svg.png")) : const Text("Waiting to roll the dice.");
  }
}
