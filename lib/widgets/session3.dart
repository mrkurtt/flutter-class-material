import 'package:flutter/material.dart';

class Session3 extends StatefulWidget {
  const Session3({super.key});

  @override
  State<Session3> createState() => _Session3State();
}

class _Session3State extends State<Session3> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Session 3',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.redAccent,
      ),
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            color: const Color.fromARGB(255, 226, 226, 226),
          ),
          Container(
            width: double.infinity,
            height: 150.0,
            // color: Colors.orangeAccent,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40.0),
                  bottomRight: Radius.circular(40.0)),
              color: Colors.orangeAccent,
            ),
            child: const Center(
                child: Text(
              'CREATE YOUR USERNAME',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0),
            )),
          ),
          Positioned(
            // width: 100.0,
            top: 110.0,
            left: 30.0,
            right: 30.0,
            bottom: 300.0,
            child: Container(
              // width: 100.0,
              // height: 400.0,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  children: [
                    const Text(
                      'Choose a username that you are comfortable to use.',
                      style: TextStyle(
                          fontWeight: FontWeight.w700, fontSize: 18.0),
                      textAlign: TextAlign.center,
                    ),
                    Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          TextFormField(
                            decoration: const InputDecoration(
                              hintText: 'Please write a username',
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16.0),
                            child: ElevatedButton(
                              onPressed: () {
                                // Validate returns true if the form is valid, or false otherwise.
                                if (_formKey.currentState!.validate()) {
                                  // If the form is valid, display a snackbar. In the real world,
                                  // you'd often call a server or save the information in a database.
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                        content: Text('Processing Data')),
                                  );
                                }
                              },
                              child: const Text('Submit'),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
          // Container(
          //   width: 100.0,
          //   height: 100.0,
          //   color: Colors.blueAccent,
          // ),
        ],
      ),
    );
  }
}
