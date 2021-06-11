import 'package:flutter/material.dart';
import 'package:flutter_shoes_app/src/pages/shoe_description_page.dart';

class ShoeSizePreview extends StatelessWidget {
  bool fullScreen;

  ShoeSizePreview({this.fullScreen = false});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final heightScreen = size.height;

    return GestureDetector(
      onTap: () {
        if (!fullScreen) {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => ShoeDescriptionPage()));
        }
      },
      child: Padding(
        padding: fullScreen
            ? EdgeInsets.symmetric(horizontal: 5, vertical: 0)
            : EdgeInsets.symmetric(horizontal: 30, vertical: 5),
        child: Container(
          width: double.infinity,
          height: fullScreen ? heightScreen * 0.48 : heightScreen * 0.53,
          decoration: BoxDecoration(
            color: Color(0xffFFCF53),
            borderRadius: fullScreen
                ? BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  )
                : BorderRadius.circular(50),
          ),
          child: Column(
            children: [
              _ShoeWithShadow(),
              fullScreen ? Container() : _ShoesSize(),
            ],
          ),
        ),
      ),
    );
  }
}

class _ShoeWithShadow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(30),
      child: Stack(
        children: [
          Positioned(
            child: _Shadow(),
            bottom: 20,
            right: 0,
          ),
          Image.asset('assets/img/azul.png'),
        ],
      ),
    );
  }
}

class _Shadow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -0.5,
      child: Container(
        width: 230,
        height: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          boxShadow: [BoxShadow(color: Color(0xffEAA14E), blurRadius: 40)],
        ),
      ),
    );
  }
}

class _ShoesSize extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(left: 10, right: 10, bottom: 15),
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _ShoeSizeBox(shoeSize: 7, isSelected: false),
          SizedBox(width: 8),
          _ShoeSizeBox(shoeSize: 7.5, isSelected: false),
          SizedBox(width: 8),
          _ShoeSizeBox(shoeSize: 8, isSelected: false),
          SizedBox(width: 8),
          _ShoeSizeBox(shoeSize: 8.5, isSelected: false),
          SizedBox(width: 8),
          _ShoeSizeBox(shoeSize: 9, isSelected: true),
          SizedBox(width: 8),
          _ShoeSizeBox(shoeSize: 9.5, isSelected: false),
        ],
      ),
    );
  }
}

class _ShoeSizeBox extends StatelessWidget {
  final double shoeSize;
  final bool isSelected;

  _ShoeSizeBox({required this.shoeSize, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      padding: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: isSelected ? Color(0xffF1A23A) : Colors.white,
        boxShadow: isSelected
            ? [
                BoxShadow(
                  color: Color(0xffF1A23A),
                  blurRadius: 10,
                  offset: Offset(0, 5),
                )
              ]
            : [BoxShadow(color: Colors.transparent)],
      ),
      child: Center(
        child: Text(
          '${this.shoeSize.toString().replaceAll(".0", "")}',
          style: TextStyle(
            color: isSelected ? Colors.white : Color(0xffF1A23A),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
