import 'package:flutter/material.dart';
import 'package:flutter_application/screens/auth/login.dart';

class SignupSuccess extends StatefulWidget {
  const SignupSuccess({super.key});

  @override
  State<SignupSuccess> createState() => _SignupSuccessState();
}

class _SignupSuccessState extends State<SignupSuccess> {
  @override
  void initState() {
    super.initState();
    // Move to the next page after 3 seconds.
    Future.delayed(
      const Duration(seconds: 5),
      () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (BuildContext context) {
              return const LoginPage();
            },
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(
              image: AssetImage('assets/images/logo.png'),
              width: 80,
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                vertical: 80.0,
                horizontal: 20.0,
              ),
              child: Column(
                children: [
                  Image.asset('assets/images/signupsucess.png'),
                  const Text(
                    'Signup succesful',
                    style: TextStyle(color: Colors.grey),
                  ),
                  const Text(
                    'redirecting you to the log in page...',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            const Positioned(
              bottom: 0.0,
              child: SizedBox(
                child: Text(
                  'Servex 1.0',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
