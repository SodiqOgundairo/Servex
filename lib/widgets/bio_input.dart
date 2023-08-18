import 'package:flutter/material.dart';
import 'package:flutter_application/helpers/styles.dart';

class BioInputWidget extends StatefulWidget {
  const BioInputWidget({super.key});

  @override
  State<BioInputWidget> createState() => _BioInputWidgetState();
}

class _BioInputWidgetState extends State<BioInputWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          cursorColor: kprimaryColor,
          keyboardAppearance: Brightness.dark,
          keyboardType: TextInputType.name,
          decoration: InputDecoration(
            labelText: 'Name',
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
            hintText: 'Yemi Ogundairo',
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
            hintText: 'Yemi',
          ),
        ),
      ],
    );
  }
}
