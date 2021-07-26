import 'package:flutter/material.dart';

import 'package:flutter_components_basics/screens/screens.dart';

typedef AppRoutes = Map<String, WidgetBuilder>;

AppRoutes getAppRoutes() => {
  'home_screen'      :   (_) => HomeScreen(),
};