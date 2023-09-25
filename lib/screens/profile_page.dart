import 'package:flutter/material.dart';
import 'package:flutter_application/helpers/styles.dart';
import 'package:flutter_application/screens/change_pin.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          'My Profile',
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
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: [
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
                  child: const Text('Change Password/Transaction Pin'),
                ),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    alignment: Alignment.centerLeft,
                  ),
                  child: const Text('Apply or Change Biometric'),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('Two-Step Verification'),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('Deactivate My Account'),
                ),
              ],
            ),
          ),
          Expanded(
            child: Image.asset('assets/images/profile_secure.png'),
          ),
        ],
      ),
    );
  }
}
