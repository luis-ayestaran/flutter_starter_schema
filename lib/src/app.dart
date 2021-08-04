import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_starter_schema/blocs/blocs.dart';

import 'package:flutter_starter_schema/routes/routes.dart';
import 'package:flutter_starter_schema/routes/sliding_route.dart';
import 'package:flutter_starter_schema/screens/home_screen.dart';
 
class App extends StatefulWidget {
  @override
  State<App> createState() => AppState();
}

class AppState extends State<App> {
  @override
  void initState() {
    super.initState();
    themeChangeNotifier.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter starter schema',
      theme: ThemeChangeNotifier.lightThemeConfig,
      darkTheme: ThemeChangeNotifier.darkThemeConfig,
      themeMode: themeChangeNotifier.currentTheme,
      routes: getAppRoutes(),
      initialRoute: 'home_screen',
      onGenerateRoute: _defaultRouteGenerator,
      localizationsDelegates: _buildLocalizationsDelegates(),
      supportedLocales: _buildSupportedLocales(),
      debugShowCheckedModeBanner: false,
    );
  }

  Route<dynamic>? _defaultRouteGenerator( RouteSettings routeSettings ) {
    return SlidingRoute(
      screen: HomeScreen(), 
      routeName: 'home_temp_screen',
    );
  }

  List<LocalizationsDelegate<dynamic>>? _buildLocalizationsDelegates() {
    return [
      GlobalMaterialLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
    ];
  }

  List<Locale> _buildSupportedLocales() {
    return [
      Locale('en', 'US'),
      Locale('es', 'ES'),
    ];
  }
}