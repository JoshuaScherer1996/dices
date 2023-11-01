import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 27, 5, 65),
                Color.fromARGB(255, 61, 9, 97)
              ],
            ),
          ),
          child: const Center(
            child: Text('Hello world!'),
          ),
        ),
      ),
    ),
  );
}
