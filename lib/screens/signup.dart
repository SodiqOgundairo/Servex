import 'package:flutter/material.dart';
import 'package:flutter_application/helpers/styles.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(
              image: AssetImage('assets/images/logo.png'),
              width: 100,
            ),
            const SizedBox(
              height: 30,
            ),
            Column(
              children: [
                const Text(
                  'Create Account',
                  style: TextStyle(
                    color: kprimaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                const Text(
                  'Sign up to secure your finances',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                Container()
              ],
            )
          ],
        ),
      ),
    );
  }
}
