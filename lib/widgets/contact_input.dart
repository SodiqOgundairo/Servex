import 'package:flutter/material.dart';
import 'package:flutter_application/helpers/styles.dart';

class ContactInputWidget extends StatefulWidget {
  const ContactInputWidget({super.key});

  @override
  State<ContactInputWidget> createState() => _ContactInputWidgetState();
}

class _ContactInputWidgetState extends State<ContactInputWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          cursorColor: kprimaryColor,
          keyboardAppearance: Brightness.dark,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            labelText: 'Email',
            contentPadding: const EdgeInsets.symmetric(
              vertical: 0.0,
              horizontal: 10.0,
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(10),
            ),
            fillColor: Colors.white,
            filled: true,
            hintText: 'example@example.com',
          ),
        ),
        const SizedBox(
          height: 50.0,
        ),
        TextField(
          cursorColor: kprimaryColor,
          keyboardAppearance: Brightness.dark,
          keyboardType: TextInputType.phone,
          decoration: InputDecoration(
            labelText: 'Telephone',
            contentPadding: const EdgeInsets.symmetric(
              vertical: 0.0,
              horizontal: 10.0,
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(10),
            ),
            fillColor: Colors.white,
            filled: true,
            hintText: '08000000000',
          ),
        ),
      ],
    );
  }
}
