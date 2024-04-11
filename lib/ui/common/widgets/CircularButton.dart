import 'package:flutter/material.dart';

class CircularButton extends StatelessWidget {
  // we need to pass an on press function to this button
  final Function onPressed;
  final String text;
  const CircularButton(
      {super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPressed();
      },
      child: Container(
          width: double.infinity,
          height: 50,
          decoration: BoxDecoration(
            color: Color(0xff8e97fd),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Center(
            child:
                Text(text, style: TextStyle(fontSize: 14, color: Colors.white)),
          )),
    );
  }
}
