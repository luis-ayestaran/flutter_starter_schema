import 'package:flutter/material.dart';

import 'package:flutter_starter_schema/theme/theme.dart';
import 'package:flutter_starter_schema/utils/target_platforms.dart';
import 'package:flutter_starter_schema/widgets/widgets.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    
    setFullScreen( context );

    return Scaffold(
      body: Column(
        children: [
          if( platform.isDesktop() ) DesktopTitleBar( title: 'App de prueba' ),
          Expanded(
            child: Scaffold(
              appBar: AppBar(
                title: Text( 'Hola mundo' ),
                brightness: Theme.of(context).brightness,
                iconTheme: Theme.of(context).iconTheme,
              ),
              body: Center(
                child: Text( 'Hola mundo', style: Theme.of(context).textTheme.headline3, ),
              ),
            ),
          )
        ],
      ),
    );
  }
}