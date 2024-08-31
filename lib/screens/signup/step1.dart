import 'package:beaulink/screens/signup/step2.dart';
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
              Text('Sign up here, step 1'),
              Text('input here'),
              Text('input here'),
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
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const Step2()));
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
