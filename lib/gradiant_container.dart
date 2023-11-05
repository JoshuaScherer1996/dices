import 'package:flutter/material.dart';
import 'package:dices/styled_text.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

// Class for a custome widget to capsulate the color and text logic.
class GradientContainer extends StatelessWidget {
  const GradientContainer(this.colorA, this.colorB, {super.key});

  final Color colorA;
  final Color colorB;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [colorA, colorB],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: StyledText("Hello World!"),
      ),
    );
  }
}
