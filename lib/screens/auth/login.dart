import 'package:flutter/material.dart';
import 'package:flutter_application/screens/auth/forgot_password.dart';
import 'package:flutter_application/screens/auth/signup.dart';
import 'package:flutter_application/helpers/styles.dart';
import 'package:flutter_application/screens/dash.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const SizedBox(
              height: 50.0,
            ),
            const Image(
              image: AssetImage('assets/images/logo.png'),
              width: 70,
            ),
            const Column(
              children: [
                Text(
                  'Login',
                  style: TextStyle(
                    color: Color.fromARGB(255, 1, 1, 57),
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                // Text(
                //   'Sign up to secure your finances',
                //   style: TextStyle(
                //     color: Colors.grey,
                //   ),
                // ),
              ],
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
                  TextField(
                    cursorColor: kprimaryColor,
                    keyboardAppearance: Brightness.dark,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      labelText: 'Username',
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
                      hintText: 'John',
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  TextField(
                    cursorColor: kprimaryColor,
                    obscureText: true,
                    keyboardAppearance: Brightness.dark,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      labelText: ' Password',
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
                      hintText: '*********',
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                            return const Dashboard();
                          },
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(370, 40),
                      backgroundColor: const Color.fromARGB(255, 1, 1, 57),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7),
                      ),
                    ),
                    child: const Text('Login'),
                  ),
                ],
              ),
            ),
            Center(
              // title: const Text("Forgot Password"),
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return const ForgotPassword();
                      },
                    ),
                  );
                },
                child: const Text('Forgot Password?'),
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
