import 'package:flutter/material.dart';

class ResponsiveScreen {

  Size? screenSize;

  ResponsiveScreen( BuildContext buildContext ) {
    screenSize = MediaQuery.of(buildContext).size;
  }

  double widthPercentage( percentage ) {
    return percentage / 100 * screenSize?.width;
  }

  double heightPercentage( percentage ) {
    return percentage / 100 * screenSize?.height;
  }

}