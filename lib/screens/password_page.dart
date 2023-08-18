import 'package:flutter/material.dart';
import 'package:flutter_application/helpers/styles.dart';
import 'package:flutter_application/widgets/pwd_input.dart';

class PasswordPage extends StatefulWidget {
  const PasswordPage({super.key});

  @override
  State<PasswordPage> createState() => _PasswordPageState();
}

class _PasswordPageState extends State<PasswordPage> {
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
                  'Create Account',
                  style: TextStyle(
                    color: kprimaryColor,
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
              child: const PwdInput(),
            ),
            Positioned(
              bottom: 0.0,
              child: SafeArea(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(370, 40),
                    backgroundColor: kprimaryColor,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7),
                    ),
                  ),
                  child: const Text('Next'),
                ),
              ),
            ),
            ListTile(
              title: const Text('Already have an Account?'),
              trailing: TextButton(
                onPressed: () {},
                child: const Text('Login Here'),
              ),
              visualDensity: VisualDensity.comfortable,
            )
          ],
        ),
      ),
    );
  }
}
