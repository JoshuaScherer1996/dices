import 'package:dices/dice_roller.dart';
import 'package:flutter/material.dart';

// Defining start and end alignments for a gradient used in the GradientContainer.
const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

/// A custom widget that displays a gradient background with a dice roller.
class GradientContainer extends StatelessWidget {
  /// Creates a GradientContainer with two colors for the gradient.
  ///
  /// Accepts [colorA] and [colorB] for the start and end colors of the gradient.
  const GradientContainer(this.colorA, this.colorB, {super.key});

  /// The starting color of the gradient.
  final Color colorA;

  /// The ending color of the gradient.
  final Color colorB;

  @override
  Widget build(context) {
    return Container(
      // Styling the container with a linear gradient decoration.
      decoration: BoxDecoration(
        gradient: LinearGradient(
          // The array of colors to be used in the gradient.
          colors: [colorA, colorB],
          // Starting and ending points of the gradient.
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      // Centering the DiceRoller widget within the gradient background.
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
