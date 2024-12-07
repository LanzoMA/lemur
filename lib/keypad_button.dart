import 'package:flutter/material.dart';

class KeypadButton extends StatelessWidget {
  final Function()? onPressed;
  final String text;
  final Color backgroundColor;

  const KeypadButton({
    super.key,
    required this.onPressed,
    required this.backgroundColor,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        backgroundColor: backgroundColor,
        foregroundColor: Colors.white,
        fixedSize: const Size.square(80.0),
        textStyle: const TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.bold,
        ),
      ),
      child: Text(text),
    );
  }
}
