import 'package:flutter/material.dart';
import 'package:flutter_application/helpers/styles.dart';
import 'package:flutter_application/screens/dash.dart';

class SwitchAccountLogin extends StatelessWidget {
  const SwitchAccountLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          'Switch Account - Login',
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
          ),
        ),
        backgroundColor: kprimaryColor,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.close,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 40.0,
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Card(
              shape: const CircleBorder(),
              elevation: 0,
              color: Colors.blue.shade100,
              child: const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  'JD',
                  style: TextStyle(
                    fontSize: 40,
                    // fontWeight: FontWeight.bold,
                    color: kprimaryColor,
                  ),
                ),
              ),
            ),
            const Text(
              'John Mary Doe',
              style: TextStyle(
                color: kprimaryColor,
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            const Text(
              'Please enter your password to continue',
              style: TextStyle(
                color: kprimaryColor,
                fontSize: 13,
                fontStyle: FontStyle.italic,
              ),
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
              ),
            ),
            const SizedBox(
              height: 30,
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
                minimumSize: const Size(170, 40),
                maximumSize: const Size(170, 40),
                backgroundColor: kprimaryColor,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7),
                ),
              ),
              child: const Text('Log In'),
            ),
          ],
        ),
      ),
    );
  }
}
