import 'package:flutter/material.dart';
import 'package:flutter_application/helpers/styles.dart';

class SelectPicture extends StatelessWidget {
  const SelectPicture({super.key});

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset('assets/images/emptyGallery.png'),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Text(
                'Access Denied to your Gallery. Please allow access to upload your desired profile image',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.blueAccent.shade700,
                  fontStyle: FontStyle.italic,
                ),
              ),
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
              child: const Text('Allow Access'),
            ),
          ],
        ),
      ),
    );
  }
}
