import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hintLabel});

  final String hintLabel;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        height: 45,
        child: TextField(
          cursorColor: Colors.blue,
          textInputAction: TextInputAction.next,
          maxLength: 10,
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
              hintText: hintLabel,
              // fillColor: Colors.red,
              // filled: true,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(color: Colors.black)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(color: Colors.red)),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(color: Colors.green))),
        ));
  }
}
