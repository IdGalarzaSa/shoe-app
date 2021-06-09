import 'package:flutter/material.dart';

class CustomOrangeButton extends StatelessWidget {
  final String buttonText;
  double buttonWidth;
  double buttonHeight;

  CustomOrangeButton({
    required this.buttonText,
    this.buttonWidth = 150,
    this.buttonHeight = 50,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: buttonWidth,
      height: buttonHeight,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.orange,
      ),
      child: Center(
        child: Text(
          '$buttonText',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
