import 'package:flutter/material.dart';
import 'package:flutter_application/helpers/styles.dart';

class LoginInput extends StatefulWidget {
  const LoginInput({super.key});

  @override
  State<LoginInput> createState() => _LoginInputState();
}

class _LoginInputState extends State<LoginInput> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
            fillColor: Colors.white,
            filled: true,
            hintText: 'John',
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
            labelText: ' Password',
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
