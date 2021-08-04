import 'package:flutter/material.dart';

class SlidingRoute extends PageRouteBuilder {
  final Widget screen;

  SlidingRoute({
    required this.screen, 
    required String routeName,
  }) : super(
    settings: RouteSettings(name: routeName),
    barrierLabel: 'Hola mundo',
    pageBuilder: (
      BuildContext context,
      Animation<double> animation,
      Animation<double> secondaryAnimation,
    ) => screen,
    transitionsBuilder: (
      BuildContext context,
      Animation<double> animation,
      Animation<double> secondaryAnimation,
      Widget child,
    ) { 
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
    //transitionDuration: Duration(milliseconds: 500),
  );
}