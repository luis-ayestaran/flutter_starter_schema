import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';

class DesktopTitleBar extends StatelessWidget {
  final String title;

  const DesktopTitleBar({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WindowTitleBarBox(
      child: Row(
        children: [
          Expanded( 
            child: MoveWindow(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox( width: 7 ),
                  FlutterLogo( size: 18, ),
                  SizedBox( width: 5, ),
                  Text( 
                    title, 
                    style: Theme.of(context).textTheme.bodyText1!.copyWith( 
                      fontWeight: FontWeight.w500, fontFamily: 'DMSans', fontSize: 13, letterSpacing: 0.1, 
                    ), 
                  ),
                ],
                ),
            ) 
          ),
          _DesktopWindowButtons(),
        ],
      ),
    );
  }
}

class _DesktopWindowButtons extends StatelessWidget {
  _DesktopWindowButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Brightness currentThemeMode = Theme.of(context).brightness;
    WindowButtonColors _windowButtonColors = WindowButtonColors(
      iconNormal: currentThemeMode == Brightness.dark ? Colors.grey.shade400 : Colors.grey.shade900,
      mouseOver: currentThemeMode == Brightness.dark ? Colors.grey.shade800 : Colors.grey.shade300,
      mouseDown: currentThemeMode == Brightness.dark ? Colors.grey.shade700 : Colors.grey.shade400,
      iconMouseDown: currentThemeMode == Brightness.dark ? Colors.grey.shade200 : Colors.grey.shade900,
      iconMouseOver: currentThemeMode == Brightness.dark ? Colors.grey.shade200 : Colors.grey.shade900,
    );

    WindowButtonColors _closeButtonColors = WindowButtonColors(
      iconNormal: currentThemeMode == Brightness.dark ? Colors.white : Colors.grey.shade900,
      mouseOver: Colors.red,
      mouseDown: Colors.red.shade300,
      iconMouseDown: currentThemeMode == Brightness.dark ? Colors.white : Colors.white,
      iconMouseOver: currentThemeMode == Brightness.dark ? Colors.white : Colors.white,
    );

    return Row(
      children: [
        MinimizeWindowButton( animate: currentThemeMode == Brightness.dark, colors: _windowButtonColors, ),
        MaximizeWindowButton( animate: currentThemeMode == Brightness.dark, colors: _windowButtonColors, ),
        CloseWindowButton( animate: currentThemeMode == Brightness.dark, colors: _closeButtonColors, ),
      ],
    );
  }
}