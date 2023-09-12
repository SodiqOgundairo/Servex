import 'package:flutter/material.dart';
import 'package:flutter_application/helpers/styles.dart';
import 'package:flutter_application/screens/selectpicture.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
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
              const Icon(
                Icons.person_pin,
                color: ksecondaryColor,
                size: 100,
              ),
              OutlinedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return const SelectPicture();
                      },
                    ),
                  );
                },
                style: OutlinedButton.styleFrom(
                  minimumSize: const Size(175, 40),
                  maximumSize: const Size(175, 40),
                  foregroundColor: kprimaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7),
                  ),
                ),
                child: const Text('CHOOSE PHOTO'),
              ),
              TextField(
                cursorColor: kprimaryColor,
                keyboardAppearance: Brightness.dark,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  labelText: 'Last Name',
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
                  hintText: 'DOE',
                ),
              ),
              TextField(
                cursorColor: kprimaryColor,
                keyboardAppearance: Brightness.dark,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  labelText: 'First Name',
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
              TextField(
                cursorColor: kprimaryColor,
                keyboardAppearance: Brightness.dark,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  labelText: 'Other Name',
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
              TextField(
                cursorColor: kprimaryColor,
                keyboardAppearance: Brightness.dark,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  labelText: 'Username',
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
                child: const Text('Change Telephone/Email Address'),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
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
                child: const Text('Apply Changes '),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
