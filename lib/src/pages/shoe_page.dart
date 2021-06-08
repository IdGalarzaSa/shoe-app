import 'package:flutter/material.dart';
import 'package:flutter_shoes_app/src/widgets/custom_widgets.dart';

class ShoePage extends StatelessWidget {
  static final routeName = "ShoePage";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomAppBar(),
          Expanded(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  ShoeSizePreview(),
                  SizedBox(height: 20),
                  ShoeDescription(
                    title: "Nike Air Max 720",
                    description:
                        "The Nike Air Max 720 goes bigger than ever before with Nike's taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so.",
                  ),
                  SizedBox(height: 20),
                  ShoeDescription(
                    title: "Nike Air Max 720",
                    description:
                        "The Nike Air Max 720 goes bigger than ever before with Nike's taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so.",
                  ),
                  SizedBox(height: 30),
                ],
              ),
            ),
          ),
          AddCarSection(amount: 375.5),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}
