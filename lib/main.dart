import 'package:flutter/material.dart';
import 'package:bitsdojo_window/bitsdojo_window.dart';

import 'package:flutter_starter_schema/src/app.dart';
import 'package:flutter_starter_schema/utils/target_platforms.dart';

void main() {
  runApp( App() );

  if( platform.isDesktop() ) {
  doWhenWindowReady(() {
    final win = appWindow;
    final minSize = Size(600, 450);
    win.minSize = minSize;
    win.alignment = Alignment.center;
    win.title = "Zindey Delivery";
    win.show();
    win.maximize();
  });
}
}