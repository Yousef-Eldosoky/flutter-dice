import 'package:audioplayers/audioplayers.dart';
import 'package:dice/Widgets/dice.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int diceNum = 0;

  Future<void> rolling(int diceNum) async {
    final player = AudioPlayer();
    await player.play(AssetSource('dice-95077.mp3'));
    // the animation illusion
    for (var i = 0; i < 7; i++) {
      setState(() {
        this.diceNum = diceNum;
      });
      await Future.delayed(const Duration(milliseconds: 100));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const SizedBox(
              height: 10,
            ),
            Dice(
              diceNum: diceNum,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Push the button to roll the dice.',
            ),
            Container(
              margin: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.greenAccent),
                        onPressed: () async {
                          // the animation illusion
                          await rolling(1);
                        },
                        child: const Text("Roll one dice"),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.greenAccent),
                        onPressed: () async {
                          // the animation illusion
                          await rolling(2);
                        },
                        child: const Text("Roll two dice"),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.greenAccent),
                    onPressed: () async {
                      // the animation illusion
                      await rolling(3);
                    },
                    child: const Text("Roll three dice"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
