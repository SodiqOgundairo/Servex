import 'package:flutter/material.dart';
import 'package:flutter_application/helpers/styles.dart';
import 'package:flutter_application/screens/change_pin.dart';
import 'package:flutter_application/screens/biometric.dart';
import 'package:flutter_application/screens/two_step_verify.dart';
import 'package:flutter_application/screens/deactivate.dart';

class Help extends StatelessWidget {
  const Help({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          'Help',
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
            icon: const Icon(Icons.close, color: Colors.white),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                ListTile(
                  visualDensity: VisualDensity.compact,
                  leading: TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                            return const ChangePin();
                          },
                        ),
                      );
                    },
                    child: const Text(
                      'Request for Debit Card',
                    ),
                  ),
                ),
                ListTile(
                  visualDensity: VisualDensity.compact,
                  leading: TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                            return const BiometricPage();
                          },
                        ),
                      );
                    },
                    style: TextButton.styleFrom(
                      alignment: Alignment.centerLeft,
                    ),
                    child: const Text(
                      'FAQs',
                    ),
                  ),
                ),
                ListTile(
                  visualDensity: VisualDensity.compact,
                  leading: TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                            return const TwoStepVerification();
                          },
                        ),
                      );
                    },
                    child: const Text('Talk to your account officer'),
                  ),
                ),
                ListTile(
                  visualDensity: VisualDensity.compact,
// titleAlignment: ,
                  leading: TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                            return const DeactivateAccount();
                          },
                        ),
                      );
                    },
                    child: const Text('About Servex'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
