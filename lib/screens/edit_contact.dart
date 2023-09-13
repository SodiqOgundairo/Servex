import 'package:flutter/material.dart';
import 'package:flutter_application/helpers/styles.dart';
import 'package:flutter_application/screens/emaill_sent.dart';

class EditContactInfo extends StatelessWidget {
  const EditContactInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.close),
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  TextField(
                    cursorColor: kprimaryColor,
                    keyboardAppearance: Brightness.dark,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      labelText: 'New Email',
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 0.0,
                        horizontal: 10.0,
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      fillColor: Colors.grey.shade200,
                      filled: true,
                      // hintText: 'DOE',
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextField(
                    cursorColor: kprimaryColor,
                    keyboardAppearance: Brightness.dark,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      labelText: 'New Telephone',
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 0.0,
                        horizontal: 10.0,
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      fillColor: Colors.grey.shade200,
                      filled: true,
                      hintText: 'JOHN',
                    ),
                  ),
                ],
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      const Text("Let's confirm it's you"),
                      TextField(
                        cursorColor: kprimaryColor,
                        keyboardAppearance: Brightness.dark,
                        keyboardType: TextInputType.name,
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Enter your password',
                          contentPadding: const EdgeInsets.symmetric(
                            vertical: 0.0,
                            horizontal: 10.0,
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          fillColor: Colors.grey.shade200,
                          filled: true,
                          hintText: 'JOHN',
                        ),
                      ),
                      OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          // minimumSize: const Size(175, 40),
                          // maximumSize: const Size(175, 40),
                          foregroundColor: kprimaryColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7),
                          ),
                        ),
                        child: const Text('Send confirmation to present email'),
                      ),
                    ],
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  // Navigator.of(context).pushReplacement(
                  //   MaterialPageRoute(
                  //     builder: (BuildContext context) {
                  //       return const EmailSent();
                  //     },
                  //   ),
                  // );
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
                child: const Text('Save'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
