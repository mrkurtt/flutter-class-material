import 'package:flutter/material.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, '/auth/landing');
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Loading...',
        style: TextStyle(fontSize: 25.0),
      ),
    );
  }
}
