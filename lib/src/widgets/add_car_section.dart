import 'package:flutter/material.dart';
import 'package:flutter_shoes_app/src/widgets/custom_orange_button.dart';

class AddCarSection extends StatelessWidget {
  final double amount;

  const AddCarSection({required this.amount});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        height: 75,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(50),
        ),
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "\$ ${this.amount}",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                ),
                CustomOrangeButton(buttonText: 'Add to car')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
