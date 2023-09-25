import 'package:flutter/material.dart';
import 'package:flutter_application/helpers/styles.dart';

class ChangePin extends StatelessWidget {
  const ChangePin({super.key});

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
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            Column(
              children: [
                TextField(
                  cursorColor: kprimaryColor,
                  keyboardAppearance: Brightness.dark,
                  keyboardType: TextInputType.name,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Old Password',
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 0.0,
                      horizontal: 10.0,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  cursorColor: kprimaryColor,
                  keyboardAppearance: Brightness.dark,
                  keyboardType: TextInputType.name,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'New Password',
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 0.0,
                      horizontal: 10.0,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  cursorColor: kprimaryColor,
                  keyboardAppearance: Brightness.dark,
                  keyboardType: TextInputType.name,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Confirm Password',
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 0.0,
                      horizontal: 10.0,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7),
                    ),
                  ),
                  child: const Text('Save New Password'),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Column(
              children: [
                TextField(
                  cursorColor: kprimaryColor,
                  keyboardAppearance: Brightness.dark,
                  keyboardType: TextInputType.name,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Old PIN',
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 0.0,
                      horizontal: 10.0,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  cursorColor: kprimaryColor,
                  keyboardAppearance: Brightness.dark,
                  keyboardType: TextInputType.name,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'New PIN',
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 0.0,
                      horizontal: 10.0,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  cursorColor: kprimaryColor,
                  keyboardAppearance: Brightness.dark,
                  keyboardType: TextInputType.name,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Confirm PIN',
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 0.0,
                      horizontal: 10.0,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7),
                    ),
                  ),
                  child: const Text('Save New PIN'),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(100.0, 40),
                backgroundColor: kprimaryColor,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 80),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7),
                ),
              ),
              child: const Text('Save Changes'),
            ),
          ],
        ),
      ),
    );
  }
}
