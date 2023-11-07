// Importing required material components from the Flutter framework.
import 'package:flutter/material.dart';
// Importing required material components from the Flutter framework.
import 'package:dices/gradiant_container.dart';

/// The entry point of the Flutter application.
void main() {
  runApp(
    const MaterialApp(
      // The root widget of the application, defining the structure of the UI.
      home: Scaffold(
        // A custom widget that provides a gradient background.
        body: GradientContainer(
          // Defining gradient colors using ARGB values.
          Color.fromARGB(255, 27, 5, 65),
          Color.fromARGB(255, 61, 9, 97),
        ),
      ),
      // Disabling the debug banner that appears in the top-right corner in debug mode.
      debugShowCheckedModeBanner: false,
    ),
  );
}
