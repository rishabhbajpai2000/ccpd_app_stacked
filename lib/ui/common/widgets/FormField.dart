import 'package:flutter/material.dart';

Widget formField(
    {required String Heading,
    required TextEditingController controller,
    required bool numericalKeyboard,
    required String? Function(String?)? formValidator}) {
  return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
    Text(
      Heading,
    ),
    SizedBox(
      height: 5,
    ),
    TextFormField(
      validator: formValidator,
        controller: controller,
        decoration: InputDecoration(),
        keyboardType: numericalKeyboard == true
            ? TextInputType.number
            : TextInputType.text),
    SizedBox(
      height: 20,
    )
  ]);
}
