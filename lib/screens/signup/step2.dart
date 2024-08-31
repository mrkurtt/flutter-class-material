import 'package:beaulink/screens/signup/step3.dart';
import 'package:flutter/material.dart';

class Step2 extends StatefulWidget {
  const Step2({super.key});

  @override
  State<Step2> createState() => _Step2State();
}

class _Step2State extends State<Step2> {
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
              Text('Sign up here, step 2'),
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
                            builder: (context) => const Step3()));
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
