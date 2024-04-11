import 'package:flutter/material.dart';

class InputTextField extends StatelessWidget {
  const InputTextField({
    super.key,
    required this.controller,
    required this.hint,
    required this.formValidator,
    this.obscureText = false,
  });

  final String hint;
  final TextEditingController controller;
  final String? Function(String?) formValidator;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: const Color(0xfff2f3f7),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextFormField(
        obscureText: obscureText,
        validator: formValidator,
        decoration: InputDecoration(
          hintText: hint,
          border: InputBorder.none,
        ),
        controller: controller,
      ),
    );
  }
}
