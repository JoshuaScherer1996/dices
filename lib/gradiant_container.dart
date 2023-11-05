import 'package:flutter/material.dart';
import 'package:dices/styled_text.dart';

// Class for a custome widget to capsulate the color and text logic.
class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 27, 5, 65),
            Color.fromARGB(255, 61, 9, 97)
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(
        child: StyledText(),
      ),
    );
  }
}
