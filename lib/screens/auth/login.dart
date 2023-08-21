import 'package:flutter/material.dart';
import 'package:flutter_application/widgets/login_input.dart';

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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(
              image: AssetImage('assets/images/logo.png'),
              width: 100,
            ),
            const SizedBox(
              height: 30,
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
                Text(
                  'Sign up to secure your finances',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                vertical: 60.0,
                horizontal: 20.0,
              ),
              padding: const EdgeInsets.all(
                30.0,
              ),
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: const LoginInput(),
            ),
            Positioned(
              bottom: 0.0,
              child: SafeArea(
                child: ElevatedButton(
                  onPressed: () {},
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
              ),
            ),
            ListTile(
              title: const Text("Don't have an account yet?"),
              trailing: TextButton(
                onPressed: () {},
                child: const Text('Signup Here'),
              ),
              visualDensity: VisualDensity.comfortable,
            ),
            const SizedBox(
              child: Text(
                'Servex 1.0',
                style: TextStyle(color: Colors.grey),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
