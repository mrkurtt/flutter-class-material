// ignore_for_file: prefer_const_constructors

import 'package:beaulink/constants/screens/loading_screen.dart';
import 'package:beaulink/features/auth/screens/auth_landing.dart';
import 'package:beaulink/features/auth/screens/login.dart';
import 'package:beaulink/screens/signup/step1.dart';
import 'package:beaulink/screens/signup/step2.dart';
import 'package:beaulink/screens/signup/step3.dart';
import 'package:beaulink/screens/signup/step4.dart';
import 'package:beaulink/widgets/session2.dart';
import 'package:beaulink/widgets/session3.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
      ),
      initialRoute: '/auth/landing',
      routes: {
        '/': (context) => const Session3(),
        '/loading': (context) => LoadingScreen(),
        '/auth/landing': (context) => AuthLanding(),
        '/auth/login': (context) => LoginScreen(),
        '/signup/step-1': (context) => const Step1(),
        '/signup/step-2': (context) => const Step2(),
        '/signup/step-3': (context) => const Step3(),
        '/signup/step-4': (context) => const Step4(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Beaulink App'),
          backgroundColor: Colors.redAccent,
          foregroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Session2(),
        ));
  }
}
