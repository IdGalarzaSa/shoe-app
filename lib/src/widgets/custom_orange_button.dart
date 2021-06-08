import 'package:flutter/material.dart';

class CustomOrangeButton extends StatelessWidget {
  final String buttonText;

  const CustomOrangeButton({required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 40,
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
