import 'package:flutter/material.dart';
import 'package:flutter_shoes_app/src/widgets/custom_widgets.dart';

class ShoeDescriptionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              ShoeSizePreview(fullScreen: true),
              Positioned(
                top: 40,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.chevron_left,
                    size: 50,
                  ),
                  color: Colors.white,
                ),
              )
            ],
          ),
          SizedBox(height: 20),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ShoeDescription(
                    title: "Nike Air Max 720",
                    description:
                        "The Nike Air Max 720 goes bigger than ever before with Nike's taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so.",
                  ),
                  SizedBox(height: 20),
                  _BuyNowSection(amount: 375.5),
                  SizedBox(height: 20),
                  _ColorsAndMore(),
                  SizedBox(height: 20),
                  _Options(),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 30,
          )
        ],
      ),
    );
  }
}

class _Options extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _OptionButton(
          iconData: Icons.favorite,
          isSelected: true,
        ),
        _OptionButton(
          iconData: Icons.add_shopping_cart,
          isSelected: false,
        ),
        _OptionButton(
          iconData: Icons.settings,
          isSelected: false,
        ),
      ],
    );
  }
}

class _OptionButton extends StatelessWidget {
  final IconData iconData;
  final bool isSelected;

  _OptionButton({required this.iconData, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      backgroundColor: Colors.white,
      elevation: 10,
      child: Icon(iconData, color: isSelected ? Colors.red : Colors.grey),
    );
  }
}

class _ColorsAndMore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 115,
            child: Stack(
              children: [
                Positioned(
                    child: _RoundedColor(color: Color(0xffC6D642)), left: 75),
                Positioned(
                    child: _RoundedColor(color: Color(0xffFFAD29)), left: 50),
                Positioned(
                    child: _RoundedColor(color: Color(0xff2099f1)), left: 25),
                Positioned(
                  child: _RoundedColor(color: Color(0xff364D56)),
                ),
              ],
            ),
          ),
          Opacity(
            opacity: 0.5,
            child: CustomOrangeButton(
              buttonText: "More releated items",
              buttonHeight: 25,
              buttonWidth: 180,
            ),
          )
        ],
      ),
    );
  }
}

class _RoundedColor extends StatelessWidget {
  final Color color;

  _RoundedColor({required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        color: color,
      ),
    );
  }
}

class _BuyNowSection extends StatelessWidget {
  final double amount;

  const _BuyNowSection({required this.amount});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "\$ $amount",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            ),
            CustomOrangeButton(
              buttonText: "Buy now",
              buttonHeight: 40,
              buttonWidth: 120,
            )
          ],
        ),
      ),
    );
  }
}
