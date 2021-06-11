import 'package:flutter/services.dart' as services;

void changeToLightNavigationBar() {
  services.SystemChrome.setSystemUIOverlayStyle(
      services.SystemUiOverlayStyle.light);
}

void changeToDarkNavigationBar() {
  services.SystemChrome.setSystemUIOverlayStyle(
      services.SystemUiOverlayStyle.dark);
}
