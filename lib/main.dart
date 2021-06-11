import 'package:flutter/material.dart';
import 'package:flutter_shoes_app/src/models/shoe_model.dart';
import 'package:flutter_shoes_app/src/pages/shoe_description_page.dart';
import 'package:flutter_shoes_app/src/pages/shoe_page.dart';
import 'package:provider/provider.dart';

void main() => runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => ShoeModel(),
          ),
        ],
        child: MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'Shoes app',
      home: ShoePage(),
    );
  }
}
