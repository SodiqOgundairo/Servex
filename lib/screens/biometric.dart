import 'package:flutter/material.dart';
import 'package:flutter_application/helpers/styles.dart';

class BiometricPage extends StatelessWidget {
  const BiometricPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.close, color: kprimaryColor),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/biometric_empty.png'),
          const SizedBox(height: 20.0),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: [
                const Text('No Biometric detected.'),
                const SizedBox(height: 20.0),
                const Text(
                  'Please register a Biometric on your phone and allow it here',
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(100.0, 40),
                    backgroundColor: kprimaryColor,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(horizontal: 80),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7),
                    ),
                  ),
                  child: const Text('Register Biometric'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
