import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "For you",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.search, size: 30))
          ],
        ),
      ),
    );
  }
}
