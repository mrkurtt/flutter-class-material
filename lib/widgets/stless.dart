import 'package:flutter/material.dart';

class AppTitleAndIcon extends StatelessWidget {
  const AppTitleAndIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          'assets/images/beaulink-logo.png',
          height: 60.0,
          width: 60.0,
        ),
        const Text(
          'Beaulink',
          style: TextStyle(
              color: Colors.pinkAccent,
              fontSize: 50.0,
              fontFamily: 'Nunito',
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
