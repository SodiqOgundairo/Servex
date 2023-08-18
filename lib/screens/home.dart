import 'package:flutter/material.dart';
import 'package:flutter_application/screens/onboarding.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    // Move to the next page after 3 seconds.
    Future.delayed(
      const Duration(seconds: 3),
      () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (BuildContext context) {
              return const StartUpPage();
            },
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Image.asset(
            //   'assets/images/splash.png',
            // ),
            Image(
              image: AssetImage('assets/images/logo.png'),
              alignment: Alignment.topLeft,
            ),
          ],
        ),
      ),
    );
  }
}
