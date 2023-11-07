import 'dart:math';
import 'package:flutter/material.dart';

// Creating a random number generator object.
final randomizer = Random();

/// A StatefulWidget that represents a dice rolling functionality.
class DiceRoller extends StatefulWidget {
  /// Constructs the DiceRoller widget.
  const DiceRoller({super.key});

  @override
  State<StatefulWidget> createState() {
    return _DiceRollerState();
  }
}

/// The state class for DiceRoller StatefulWidget.
class _DiceRollerState extends State<DiceRoller> {
  // The current value of the rolled dice, initialized to 2.
  var currentDiceRoll = 2;

  /// Rolls the dice to get a random value between 1 and 6.
  void rollDice() {
    setState(() {
      // Generating a new dice roll value.
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      // Ensuring the column occupies the minimum space.
      mainAxisSize: MainAxisSize.min,
      children: [
        // Displaying the image corresponding to the current dice roll.
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png',
          width: 200,
        ),
        const SizedBox(
          // Providing space between the image and the button.
          height: 20,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 28,
            ),
          ),
          // The button to initiate a dice roll.
          child: const Text('Roll Dice'),
        )
      ],
    );
  }
}
