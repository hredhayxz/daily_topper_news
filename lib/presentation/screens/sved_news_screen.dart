import 'package:flutter/material.dart';

class SavedNewsScreen extends StatelessWidget {
  const SavedNewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Saved News Screen',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
