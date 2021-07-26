import 'package:flutter/material.dart';

const Color lightPrimaryColor = Color(0xff0575D9);
const Color lightPrimaryVariant = Color(0xff4294DE);
const Color lightSecondaryColor = Color(0xff1c8fd0);
const Color lightSecondaryVariant = Color(0xff1c8fd0);
const Color lightErrorColor = Color(0xffF53057);
const Color lightBackgroundColor = Colors.white;
final Color lightScaffoldBackgroundColor = Colors.grey.shade50;
const Color lightBaseColor = Colors.white;
final Color lightIconBaseColor = Colors.grey.shade700;
const Color lightIconButtonBaseColor = Colors.white;
const Color lightHeadlineTextColor1 = Color(0xff333333);
const Color lightHeadlineTextColor2 = Color(0xff333333);
const Color lightHeadlineTextColor3 = Color(0xff333333);
const Color lightHeadlineTextColor4 = Color(0xff333333);
const Color lightHeadlineTextColor5 = Color(0xff333333);
const Color lightHeadlineTextColor6 = Color(0xff333333);
const Color lightBodyTextColor1 = Color(0xff333333);
const Color lightBodyTextColor2 = Color(0xff888888);
const Color lightTextBaseColor = Color(0xff333333);

const Color darkPrimaryColor = Color(0xff329D92);
const Color darkPrimaryVariant = Color(0xff3fa98c);
const Color darkSecondaryColor = Color(0xff1c8fd0);
const Color darkSecondaryVariant = Color(0xff1c8fd0);
const Color darkErrorColor = Color(0xffF66A85);
final Color darkBackgroundColor = Colors.black87;
final Color darkScaffoldBackgroundColor = Colors.black87;
const Color darkBaseColor = Colors.black;
const Color darkIconBaseColor = Colors.white;
final Color darkIconButtonBaseColor = Colors.grey.shade900;
const Color darkHeadlineTextColor1 = Colors.white;
const Color darkHeadlineTextColor2 = Colors.white;
const Color darkHeadlineTextColor3 = Colors.white;
const Color darkHeadlineTextColor4 = Colors.white;
const Color darkHeadlineTextColor5 = Colors.white;
const Color darkHeadlineTextColor6 = Colors.white;
const Color darkBodyTextColor1 = Colors.white;
const Color darkBodyTextColor2 = Color(0xffeeeeee);
const Color darkTextBaseColor = Colors.white;


//------------------- BUILDING APP THEME ------------------//

//Light theme
ThemeData buildLightThemeData() => ThemeData(
  
  brightness: Brightness.light,
  backgroundColor: lightBackgroundColor,
  primaryColor: lightPrimaryColor,
  colorScheme: _buildLightColorScheme(),
  
  fontFamily: 'Poppins',
  primaryTextTheme: _buildLightPrimaryTextTheme(),
  textTheme: _buildLightTextTheme(),
  iconTheme: _buildLightIconTheme(),
  
  scaffoldBackgroundColor: lightBackgroundColor,
  appBarTheme: _buildLightAppBarTheme(),
  floatingActionButtonTheme: _buildLightFloatingActionButtonTheme(),
  
);

//Dark theme
ThemeData buildDarkThemeData() => ThemeData(
  
  brightness: Brightness.dark,
  backgroundColor: darkBackgroundColor,
  primaryColor: darkPrimaryColor,
  colorScheme: _buildDarkColorScheme(),
  
  fontFamily: 'DMSans',
  primaryTextTheme: _buildDarkPrimaryTextTheme(),
  textTheme: _buildDarkTextTheme(),
  iconTheme: _buildDarkIconTheme(),
  
  scaffoldBackgroundColor: darkBackgroundColor,
  appBarTheme: _buildDarkAppBarTheme(),
  floatingActionButtonTheme: _buildDarkFloatingActionButtonTheme(),

);


//--------------------------------------- REUSABLE THEMING METHODS ---------------------------------//

//***** COLOR SCHEME *****/

//Light color scheme
ColorScheme _buildLightColorScheme() => _buildColorScheme(
  primary: lightPrimaryColor,
  primaryVariant: lightPrimaryVariant,
  secondary: lightSecondaryColor,
  secondaryVariant: lightSecondaryVariant,
  surface: lightBaseColor,
  background: lightBackgroundColor,
  error: lightErrorColor,
  onPrimary: lightBaseColor,
  onSecondary: lightBaseColor,
  onSurface: lightTextBaseColor,
  onBackground: lightTextBaseColor,
  onError: lightBaseColor,
  brightness: Brightness.light,
);

//Dark color Scheme
ColorScheme _buildDarkColorScheme() => _buildColorScheme(
  primary: darkPrimaryColor,
  primaryVariant: darkPrimaryVariant,
  secondary: darkSecondaryColor,
  secondaryVariant: darkSecondaryVariant,
  surface: darkBaseColor,
  background: darkBackgroundColor,
  error: darkErrorColor,
  onPrimary: darkBaseColor,
  onSecondary: darkBaseColor,
  onSurface: darkTextBaseColor,
  onBackground: darkTextBaseColor,
  onError: darkBaseColor,
  brightness: Brightness.dark,
);

ColorScheme _buildColorScheme({
  required Color primary,
  required Color primaryVariant,
  required Color secondary,
  required Color secondaryVariant,
  required Color surface,
  required Color background,
  required Color error,
  required Color onPrimary,
  required Color onSecondary,
  required Color onSurface,
  required Color onBackground,
  required Color onError,
  required Brightness brightness,
}) => ColorScheme(
  primary: primary,
  primaryVariant: primaryVariant,
  secondary: secondary,
  secondaryVariant: secondaryVariant, 
  surface: surface, 
  background: background, 
  error: error, 
  onPrimary: onPrimary, 
  onSecondary: onSecondary, 
  onSurface: onSurface, 
  onBackground: onBackground, 
  onError: onError, 
  brightness: brightness,
);


//***** TEXT THEME ******/
TextTheme _buildLightTextTheme() => _buildTextTheme(
  
);

TextTheme _buildDarkTextTheme() => _buildTextTheme(

);

TextTheme _buildTextTheme(

) => TextTheme(
  
);


//***** PRIMARY TEXT THEME ******/

//Light primaryTextTheme
TextTheme _buildLightPrimaryTextTheme() => _buildPrimaryTextTheme(
  headline6Color: lightHeadlineTextColor6,
);

//Dark primaryTextTheme
TextTheme _buildDarkPrimaryTextTheme() => _buildPrimaryTextTheme(
  headline6Color: darkHeadlineTextColor6,
);

TextTheme _buildPrimaryTextTheme({
  required Color headline6Color,
}) => TextTheme(
  headline6: TextStyle( color: headline6Color, ),
);


//***** APPBAR THEME *****

//Light AppBar theme
AppBarTheme _buildLightAppBarTheme() => _buildAppBarTheme( 
  backgroundColor: lightBaseColor, 
  elevation: 0,
  actionsIconTheme: _buildLightActionsIconTheme(),
);

//Dark AppBar theme
AppBarTheme _buildDarkAppBarTheme() => _buildAppBarTheme( 
  backgroundColor: darkBackgroundColor, 
  elevation: 0,
  actionsIconTheme: _buildDarkActionsIconTheme(),
);

AppBarTheme _buildAppBarTheme({
  required Color backgroundColor,
  double? elevation = 0,
  required IconThemeData actionsIconTheme,

}) => AppBarTheme(
  backgroundColor: backgroundColor, 
  elevation: elevation, 
  actionsIconTheme: actionsIconTheme,
);


//***** ICON THEME *****/

IconThemeData _buildLightIconTheme() => _buildIconTheme(
  color: lightIconBaseColor
);

IconThemeData _buildDarkIconTheme() => _buildIconTheme(
  color: darkIconBaseColor
);

IconThemeData _buildIconTheme({
  required Color color,
}) => IconThemeData(
  color: color,
);


//***** ACTIONS ICON THEME *****/

//Light actionsIconTheme
IconThemeData _buildLightActionsIconTheme() => _buildActionsIconTheme(
  color: lightIconBaseColor,
);

//Dark actionsIconTheme
IconThemeData _buildDarkActionsIconTheme() => _buildActionsIconTheme(
  color: darkIconBaseColor,
);

IconThemeData _buildActionsIconTheme({ 
  required Color color,
  double? opacity,
  double? size,
}) => IconThemeData(
  color: color,
  opacity: opacity,
  size: size,
);


//***** FLOATINGACTIONBUTTON THEME *****/

FloatingActionButtonThemeData _buildLightFloatingActionButtonTheme() => _buildFloatingActionButtonTheme(
  backgroundColor: lightPrimaryColor,
  foregroundColor: lightIconButtonBaseColor,
  splashColor: lightPrimaryVariant,
);

FloatingActionButtonThemeData _buildDarkFloatingActionButtonTheme() => _buildFloatingActionButtonTheme(
  backgroundColor: darkPrimaryColor,
  foregroundColor: darkIconButtonBaseColor,
  splashColor: darkPrimaryVariant,
);

FloatingActionButtonThemeData _buildFloatingActionButtonTheme({
  required Color backgroundColor,
  required Color foregroundColor,
  required Color splashColor,
}) => FloatingActionButtonThemeData(
  backgroundColor: backgroundColor,
  enableFeedback: true,
  foregroundColor: foregroundColor,
  splashColor: splashColor,
);