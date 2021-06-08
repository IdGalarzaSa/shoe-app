import 'package:flutter/material.dart';

class ShoeDescription extends StatelessWidget {
  final String title;
  final String description;

  const ShoeDescription({required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "${this.title}",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
            textAlign: TextAlign.left,
          ),
          SizedBox(height: 20),
          Text("${this.description}",
              style:
                  TextStyle(color: Colors.black54, height: 1.8, fontSize: 16),
              textAlign: TextAlign.justify),
        ],
      ),
    );
  }
}
