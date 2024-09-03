import 'package:flutter/material.dart';

class Step1 extends StatefulWidget {
  const Step1({super.key});

  @override
  State<Step1> createState() => _Step1State();
}

class _Step1State extends State<Step1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Sign Up Step 1'),
      // ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const Text('Sign up here, step 1'),
              const Text('input here'),
              const Text('input here'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text('Back')),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/signup/step-2');
                      },
                      child: const Text('Proceed'))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
