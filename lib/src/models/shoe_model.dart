import 'package:flutter/material.dart';

class ShoeModel extends ChangeNotifier {
  String _assetImage = 'assets/img/azul.png';

  double _size = 9.0;

  String get assetImage => this._assetImage;

  set assetImage(String newImagePath) {
    this._assetImage = newImagePath;
    notifyListeners();
  }

  double get size => this._size;

  set size(double newSize) {
    this._size = newSize;
    notifyListeners();
  }
}
