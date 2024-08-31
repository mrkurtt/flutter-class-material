import 'package:beaulink/screens/signup/step1.dart';
import 'package:flutter/material.dart';

class Session2 extends StatelessWidget {
  const Session2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            const Text('Fonts and Images'),
            Image.asset(
              'assets/images/beaulink-logo.png',
              height: 60.0,
              width: 60.0,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Image.network(
                  'https://i.pinimg.com/736x/1e/f8/65/1ef8658dbf85c049ed256d05efc45d15.jpg'),
            ),
            const Text(
              'Beaulink IB',
              style: TextStyle(
                  color: Colors.pinkAccent,
                  fontSize: 50.0,
                  fontFamily: 'Nunito',
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold),
            ),
            const Text(
              'Beaulink',
              style: TextStyle(
                color: Colors.pinkAccent,
                fontSize: 50.0,
                fontFamily: 'Nunito',
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ),
        Column(
          children: [
            const Text('Container with bg image '),
            Container(
              height: 200.0,
              width: 300.0,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/bini-aiah.png'),
                      fit: BoxFit.cover)),
              child: const Center(
                  child: Text(
                'This is Bini Aiah',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              )),
            ),
          ],
        ),
        ElevatedButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => const Step1()));
            },
            child: const Text('Go to Sign Up Page'))
      ],
    );
  }
}
