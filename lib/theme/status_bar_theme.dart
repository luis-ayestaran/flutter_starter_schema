import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void setFullScreen() {
  //SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
  SystemChrome.setEnabledSystemUIMode( SystemUiMode.edgeToEdge );
}

void setStatusBarStyle({ 
  required Color statusBarColor, 
  required Brightness statusBarBrightness,

  required Color navigationBarColor,
  required Color navigationBarDividerColor,
  required Brightness navigationBarIconBrightness,
}) {

  SystemChrome.setSystemUIOverlayStyle( SystemUiOverlayStyle(
    statusBarColor: statusBarColor,
    statusBarBrightness: statusBarBrightness,
    statusBarIconBrightness: statusBarBrightness,

    systemNavigationBarColor: navigationBarColor,
    systemNavigationBarDividerColor: navigationBarDividerColor,
    systemNavigationBarIconBrightness: navigationBarIconBrightness,
  ));

}