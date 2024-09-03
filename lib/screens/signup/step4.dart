import 'package:flutter/material.dart';

class Step4 extends StatefulWidget {
  const Step4({super.key});

  @override
  State<Step4> createState() => _Step4State();
}

class _Step4State extends State<Step4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Sign Up Step 2'),
      // ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const Text('Sign up here, step 4'),
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
                        Navigator.popAndPushNamed(context, '/signup/step-1');
                      },
                      child: const Text('Pop and Push'))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
