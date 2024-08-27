import 'package:flutter/material.dart';

class AppTitleAndIcon extends StatelessWidget {
  const AppTitleAndIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Beaulink',
      style: TextStyle(
          color: Colors.pinkAccent,
          fontSize: 50.0,
          fontWeight: FontWeight.w600),
    );
  }
}
