import 'package:audioplayers/audioplayers.dart'; // Importing the audioplayers package for playing sound effects.
import 'package:dice/Widgets/dice.dart'; // Importing a custom Dice widget from the dice/Widgets directory.
import 'package:flutter/material.dart'; // Importing Flutter's material package for UI components.

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // The title of the app, passed from the parent widget.
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int diceNum = 0; // Variable to hold the current dice number (or count of dice).

  // Method to simulate rolling the dice, with sound and animation.
  Future<void> rolling(int diceNum) async {
    final player = AudioPlayer(); // Create an instance of AudioPlayer.
    await player.play(AssetSource('dice-95077.mp3')); // Play the dice sound effect.

    // Animation loop to create the illusion of rolling dice.
    for (var i = 0; i < 7; i++) {
      setState(() {
        this.diceNum = diceNum; // Update the dice number to trigger a rebuild.
      });
      await Future.delayed(const Duration(milliseconds: 100)); // Wait for 100ms between updates.
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary, // Dynamic color scheme for the app bar.
        title: Text(widget.title), // Display the app title.
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start, // Align children to the top of the column.
          children: <Widget>[
            const SizedBox(height: 10), // Add spacing at the top.

            // Dice widget to display the current dice result.
            Dice(
              diceNum: diceNum, // Pass the current dice number to the Dice widget.
            ),

            const SizedBox(height: 20), // Add spacing between widgets.

            // Instructional text for the user.
            const Text(
              'Push the button to roll the dice.',
            ),

            // Container to group the buttons.
            Container(
              margin: const EdgeInsets.all(20), // Add padding around the container.
              child: Column(
                children: [
                  // Row for the "Roll one dice" and "Roll two dice" buttons.
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround, // Distribute buttons evenly in the row.
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.greenAccent), // Style the button.
                        onPressed: () async {
                          await rolling(1); // Roll one dice when pressed.
                        },
                        child: const Text("Roll one dice"), // Button label.
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.greenAccent), // Style the button.
                        onPressed: () async {
                          await rolling(2); // Roll two dice when pressed.
                        },
                        child: const Text("Roll two dice"), // Button label.
                      ),
                    ],
                  ),
                  const SizedBox(height: 10), // Add spacing between rows.

                  // Button to roll three dice.
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.greenAccent), // Style the button.
                    onPressed: () async {
                      await rolling(3); // Roll three dice when pressed.
                    },
                    child: const Text("Roll three dice"), // Button label.
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
