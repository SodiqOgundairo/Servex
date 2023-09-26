import 'package:flutter/material.dart';
import 'package:flutter_application/helpers/styles.dart';
import 'package:flutter_application/screens/home.dart';

class DeactivateAccount extends StatelessWidget {
  const DeactivateAccount({super.key});

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
          Image.asset('assets/images/delete_account.png'),
          // const SizedBox(height: 10.0),

          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: [
                const Text('It hurts to see you leave... 😢 '),
                const SizedBox(height: 20.0),
                const SizedBox(height: 20.0),
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
                  child: const Text('I WANT TO STAY 😊'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return AlertDialog(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            title: const Text(
                              'Account Deleted!',
                              style: TextStyle(color: Colors.red),
                            ),
                            content:
                                const Text('Your account has been deleted!'),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                      builder: (BuildContext context) {
                                        return const HomePage();
                                      },
                                    ),
                                  );
                                },
                                child: const Text('Coninue'),
                              ),
                            ],
                          );
                        },
                      ),
                    );
                  },
                  child: const Text(
                    'DEACTIVATE MY ACCOUNT',
                    style: TextStyle(color: Colors.red),
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
