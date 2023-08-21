import 'package:flutter/material.dart';
import 'package:flutter_application/helpers/styles.dart';
import 'package:flutter_application/screens/auth/bio_page.dart';
import 'package:flutter_application/widgets/contact_input.dart';

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
                vertical: 40.0,
                horizontal: 20.0,
              ),
              padding: const EdgeInsets.all(
                30.0,
              ),
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: const ContactInputWidget(),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return const BioPage();
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
              child: const Text('Next'),
            ),
            ListTile(
              title: const Text('Already have an Account?'),
              trailing: TextButton(
                onPressed: () {},
                child: const Text('Signup'),
              ),
            ),
            const SizedBox(
              height: 40,
              child: Text('OR'),
            ),
            OutlinedButton.icon(
              onPressed: () {},
              label: const Text('SIGNUP WITH GOOGLE'),
              style: OutlinedButton.styleFrom(
                minimumSize: const Size(370, 40),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7),
                ),
              ),
              icon: const ImageIcon(
                AssetImage('assets/images/google-g-logo.png'),
              ),
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
