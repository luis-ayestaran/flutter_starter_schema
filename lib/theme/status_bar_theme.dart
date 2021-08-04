import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void setFullScreen( BuildContext context ) {
  SystemChrome.setEnabledSystemUIMode( SystemUiMode.edgeToEdge );

  SystemChrome.setSystemUIOverlayStyle( SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarBrightness: (Theme.of(context).brightness == Brightness.light ) ? Brightness.dark : Brightness.light,
    statusBarIconBrightness: (Theme.of(context).brightness == Brightness.light ) ? Brightness.dark : Brightness.light,
    systemNavigationBarColor: Colors.transparent,
    systemNavigationBarDividerColor: Colors.transparent,
    systemNavigationBarIconBrightness: (Theme.of(context).brightness == Brightness.light ) ? Brightness.dark : Brightness.light,
  ));

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
    statusBarIconBrightness: Brightness.dark,

    systemStatusBarContrastEnforced: false,

    systemNavigationBarColor: navigationBarColor,
    systemNavigationBarDividerColor: navigationBarDividerColor,
    systemNavigationBarIconBrightness: navigationBarIconBrightness,

    systemNavigationBarContrastEnforced: false,
  ));

}