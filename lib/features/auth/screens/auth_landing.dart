import 'package:beaulink/features/auth/services/auth_services.dart';
import 'package:flutter/material.dart';

class AuthLanding extends StatefulWidget {
  const AuthLanding({super.key});

  @override
  State<AuthLanding> createState() => _AuthLandingState();
}

class _AuthLandingState extends State<AuthLanding> {
  AuthServices auth = AuthServices();

  String username = '';
  String email = '';
  List pets = [];
  bool loading = false;

  Future getUserData() async {
    var response = await auth.getUserDataService();

    setState(() {
      username = response[0];
      email = response[1];
    });

    print(response);
  }

  // void getUserData() async {
  //   loading = true;

  //   String uname = await Future.delayed(Duration(seconds: 3), () {
  //     return 'Ann';
  //   });

  //   String emailAdd = await Future.delayed(Duration(seconds: 2), () {
  //     return 'ann@gmail.com';
  //   });

  //   setState(() {
  //     username = uname;
  //     email = emailAdd;
  //   });

  //   loading = false;
  // }

  void getAllPets() async {
    List allPets = await Future.delayed(Duration(seconds: 3), () {
      return ['mark', 'carl'];
    });

    setState(() {
      pets = allPets;
    });
  }

  @override
  void initState() {
    super.initState();
    getUserData();
    getAllPets();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login screen')),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Text('Loading: $loading'),
              Text('Pets: $pets'),
              Text('Username: $username'),
              Text('Email address: $email'),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/auth/login');
                  },
                  child: Text('Login')),
              ElevatedButton(
                  onPressed: () {}, child: Text('Create an Account')),
            ],
          ),
        ),
      ),
    );
  }
}
