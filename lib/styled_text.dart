import 'package:flutter/material.dart';

/// A StatelessWidget that provides a styled text widget.
class StyledText extends StatelessWidget {
  /// Constructs a StyledText widget with given [text].
  ///
  /// The [key] is an identifier for widgets, elements, and semantically unique
  /// Widget subtrees.
  const StyledText(this.text, {super.key});

  /// The text to display in this widget.
  final String text;

  @override
  Widget build(context) {
    return Text(
      // The string content of the text widget.
      text,
      // Applying a text style with white color and a font size of 28.
      style: const TextStyle(color: Colors.white, fontSize: 28),
    );
  }
}
