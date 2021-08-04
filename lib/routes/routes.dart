import 'package:flutter/material.dart';

import 'package:flutter_starter_schema/screens/screens.dart';

typedef AppRoutes = Map<String, WidgetBuilder>;

AppRoutes getAppRoutes() => {
  'home_screen'      :   (_) => HomeScreen(),
};