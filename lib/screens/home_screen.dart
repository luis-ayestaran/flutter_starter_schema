import 'package:flutter/material.dart';

import 'package:flutter_components_basics/theme/theme.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    
    setFullScreen();

    setStatusBarStyle( 
      statusBarColor: Colors.transparent, 
      statusBarBrightness: Brightness.light,
      
      navigationBarColor: Colors.transparent, 
      navigationBarDividerColor: Colors.transparent,
      navigationBarIconBrightness: Brightness.light
    );

    return Scaffold(
      body: Center(
        child: Container(
          child: Text('Hola mundo', style: Theme.of(context).textTheme.headline3, ),
        ),
      ),
    );
  }
}