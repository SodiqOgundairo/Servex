import 'package:flutter/material.dart';
import 'package:flutter_application/screens/auth/login.dart';
import 'package:flutter_application/screens/auth/password_reset.dart';
import 'package:flutter_application/screens/auth/signup.dart';
import 'package:flutter_application/helpers/styles.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(
              image: AssetImage('assets/images/logo.png'),
              width: 70,
            ),
            const SizedBox(
              height: 30.0,
            ),
            const Column(
              children: [
                Text(
                  'Forgot your Password?',
                  style: TextStyle(
                    color: Color.fromARGB(255, 1, 1, 57),
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Center(
                    child: Text(
                      'Let’s help you recover your password and get back into your account.',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(
              height: 30.0,
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 20.0,
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 30.0,
              ),
              child: Column(
                children: [
                  const Text(
                    'Input your EMAIL or PHONE here',
                    textAlign: TextAlign.left,
                  ),
                  TextField(
                    cursorColor: kprimaryColor,
                    keyboardAppearance: Brightness.dark,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 0.0,
                        horizontal: 10.0,
                      ),
                      border: OutlineInputBorder(
                        // borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      fillColor: Colors.white,
                      filled: true,
                      hintText: 'example@email.com',
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                            return const PasswordReset();
                          },
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(370, 40),
                      backgroundColor: kprimaryColor,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7),
                      ),
                    ),
                    child: const Text('SEARCH FOR MY ACCOUNT'),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
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
            // const SizedBox(
            //   height: 30.0,
            //   child: Text('OR'),
            // ),
            // OutlinedButton.icon(
            //   onPressed: () {},
            //   label: const Text('SIGNUP WITH GOOGLE'),
            //   style: OutlinedButton.styleFrom(
            //     minimumSize: const Size(370, 40),
            //     shape: RoundedRectangleBorder(
            //       borderRadius: BorderRadius.circular(7),
            //     ),
            //   ),
            //   icon: const ImageIcon(
            //     AssetImage('assets/images/google-g-logo.png'),
            //   ),
            // ),
            Image.asset(
              'assets/images/vector1.png',
            ),
            const SizedBox(
              height: 20.0,
            ),
            const Text(
              'Servex 1.0',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
