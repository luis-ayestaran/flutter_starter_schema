import 'package:flutter/material.dart';

import 'package:flutter_components_basics/routes/routes.dart';
import 'package:flutter_components_basics/theme/app_theme.dart';
 
class ComponentsApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Componentes de Flutter',
      routes: getAppRoutes(),
      initialRoute: 'home_screen',
      theme: buildLightThemeData(),
      darkTheme: buildDarkThemeData(),
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
    );
  }
}