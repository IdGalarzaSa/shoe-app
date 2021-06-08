import 'package:flutter/material.dart';
import 'package:flutter_shoes_app/src/pages/shoe_description_page.dart';
import 'package:flutter_shoes_app/src/pages/shoe_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'Shoes app',
      home: ShoeDescriptionPage(),
    );
  }
}
