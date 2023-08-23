import 'package:flutter/material.dart';
import 'package:flutter_application/screens/auth/login.dart';
import 'package:flutter_application/screens/auth/signup.dart';

class PasswordReset extends StatefulWidget {
  const PasswordReset({super.key});

  @override
  State<PasswordReset> createState() => _PasswordResetState();
}

class _PasswordResetState extends State<PasswordReset> {
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
                vertical: 40.0,
                horizontal: 20.0,
              ),
              child: Column(
                children: [
                  Image.asset('assets/images/email_sent.png'),
                  Center(
                    // title: const Text("Forgot Password"),
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context) {
                              return const LoginPage();
                            },
                          ),
                        );
                      },
                      child: const Text('Login'),
                    ),
                  ),
                  Center(
                    // title: const Text("Forgot Password")
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (BuildContext context) {
                              return const SignUpPage();
                            },
                          ),
                        );
                      },
                      // child: const Text("Don't have an account yet? Create One"),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Don't have an account yet? "),
                          Text(
                            'Create one',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Image.asset(
              'assets/images/vector1.png',
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
