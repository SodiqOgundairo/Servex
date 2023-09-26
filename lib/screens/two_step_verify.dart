import 'package:flutter/material.dart';
import 'package:flutter_application/helpers/styles.dart';
import 'package:flutter_application/screens/change_pin.dart';

class TwoStepVerification extends StatefulWidget {
  const TwoStepVerification({super.key});

  @override
  State<TwoStepVerification> createState() => _TwoStepVerificationState();
}

class _TwoStepVerificationState extends State<TwoStepVerification> {
  bool isSwitch = false;

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
          Image.asset('assets/images/security.png'),
          // const SizedBox(height: 10.0),
          ListTile(
            trailing: Switch(
              value: isSwitch,
              onChanged: (bool newBool) {
                setState(
                  () {
                    isSwitch = newBool;
                    // debugPrint('switched');
                  },
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: [
                const Text(
                  'Enable or disable Two-Step Authentication on your devices',
                  textAlign: TextAlign.start,
                ),
                const SizedBox(height: 20.0),
                const Text(
                  'You are advised to enable it to secure your account better.',
                  textAlign: TextAlign.start,
                ),
                const SizedBox(height: 20.0),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return const ChangePin();
                        },
                      ),
                    );
                  },
                  child: const Text('Change Pin'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return const ChangePin();
                        },
                      ),
                    );
                  },
                  child: const Text('Change Password'),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(100.0, 40),
                    backgroundColor: kprimaryColor,
                    foregroundColor: Colors.white,
                    // padding: const EdgeInsets.symmetric(horizontal: 0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7),
                    ),
                  ),
                  child: const Text('Add Two-Step Authentication'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
