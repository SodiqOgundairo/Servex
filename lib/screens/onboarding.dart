import 'package:flutter/material.dart';
import 'package:flutter_application/screens/login.dart';
import 'package:flutter_application/screens/signup.dart';
import 'package:flutter_application/helpers/styles.dart';

class StartUpPage extends StatefulWidget {
  const StartUpPage({super.key});

  @override
  State<StartUpPage> createState() => _StartUpPageState();
}

class _StartUpPageState extends State<StartUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/welcome.png'),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return const LoginPage();
                  },
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(300, 40),
              backgroundColor: kprimaryColor,
              foregroundColor: Colors.white,
            ),
            child: const Text('Login'),
          ),
          OutlinedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return const SignUpPage();
                  },
                ),
              );
            },
            style: OutlinedButton.styleFrom(
              minimumSize: const Size(300, 40),
              foregroundColor: ksecondaryColor,
            ),
            child: const Text('SignUp'),
          ),
        ],
      ),
    );
  }
}
