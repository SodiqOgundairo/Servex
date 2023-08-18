import 'package:flutter/material.dart';
import 'package:flutter_application/helpers/styles.dart';

class PwdInput extends StatefulWidget {
  const PwdInput({super.key});

  @override
  State<PwdInput> createState() => _PwdInputState();
}

class _PwdInputState extends State<PwdInput> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          cursorColor: kprimaryColor,
          obscureText: true,
          keyboardAppearance: Brightness.dark,
          keyboardType: TextInputType.name,
          decoration: InputDecoration(
            labelText: 'Password',
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
            hintText: '*********',
          ),
        ),
        const SizedBox(
          height: 50.0,
        ),
        TextField(
          cursorColor: kprimaryColor,
          obscureText: true,
          keyboardAppearance: Brightness.dark,
          keyboardType: TextInputType.name,
          decoration: InputDecoration(
            labelText: 'Confirm Password',
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
            hintText: '*********',
          ),
        ),
      ],
    );
  }
}
