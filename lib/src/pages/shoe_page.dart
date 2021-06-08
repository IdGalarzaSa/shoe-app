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
          ShoeSizePreview(),
        ],
      ),
    );
  }
}
