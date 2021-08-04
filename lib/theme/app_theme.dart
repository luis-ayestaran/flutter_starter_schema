import 'package:flutter/material.dart';

const Color _lightPrimaryColor = Color(0xff0577DD);
const Color _lightPrimaryVariant = Color(0xff4294DE);
const Color _lightSplashColor = Colors.white38;
const MaterialColor _lightPrimarySwatch = MaterialColor(0xff0577DD, {
  50 : Color(0xffaed8fe),
  100 : Color(0xff87c4fd),
  200 : Color(0xff5fb1fc),
  300 : Color(0xff379efb),
  400 : Color(0xff0f8bfa),
  500 : Color(0xff0577dd),
  600 : Color(0xff0461b4),
  700 : Color(0xff034b8c),
  800 : Color(0xff023564),
  900 : Color(0xff01203c),
});
const Color _lightSecondaryColor = Color(0xff1c8fd0);
const Color _lightSecondaryVariant = Color(0xff1c8fd0);
const Color _lightErrorColor = Color(0xffF53057);
const Color _lightBackgroundColor = Colors.white;
const Color _lightScaffoldBackgroundColor = Colors.white;
const Color _lightBaseColor = Colors.white;
final Color _lightIconBaseColor = Colors.grey.shade700;
const Color _lightTextButtonBaseColor = Colors.white;
const Color _lightIconButtonBaseColor = Colors.white;
const Color _lightShadowBaseColor = Color(0x33000000);
const Color _lightShadowButtonColor = Color(0x33000000);
const Color _lightHeadlineTextColor1 = Color(0xff333333);
const Color _lightHeadlineTextColor2 = Color(0xff333333);
const Color _lightHeadlineTextColor3 = Color(0xff333333);
const Color _lightHeadlineTextColor4 = Color(0xff333333);
const Color _lightHeadlineTextColor5 = Color(0xff333333);
const Color _lightHeadlineTextColor6 = Color(0xff333333);
const Color _lightBodyTextColor1 = Color(0xff333333);
const Color _lightBodyTextColor2 = Color(0xff888888);
const Color _lightTextBaseColor = Color(0xff333333);
const Color _lightCardBackgroundColor = Colors.white;
const Color _lightDialogBackgroundColor = Colors.white;
final Color _lightTooltipBackgroundColor = Colors.grey.shade800;
const Color _lightTooltipTextColor = Colors.white;

const Color _darkPrimaryColor = Color(0xff20d1a9);
const Color _darkPrimaryVariant = Color(0xff3fa98c);
const Color _darkSplashColor = Colors.black38;
const MaterialColor _darkPrimarySwatch = MaterialColor(0xff0577DD, {
  50 : Color(0xffc6f6eb),
  100 : Color(0xffa2f1de),
  200 : Color(0xff7febd2),
  300 : Color(0xff5be6c6),
  400 : Color(0xff38e1ba),
  500 : Color(0xff20d1a9),
  600 : Color(0xff1aad8c),
  700 : Color(0xff148a70),
  800 : Color(0xff0f6653),
  900 : Color(0xff0a4336),
});
const Color _darkSecondaryColor = Color(0xff1c8fd0);
const Color _darkSecondaryVariant = Color(0xff1c8fd0);
const Color _darkErrorColor = Color(0xffF66A85);
const Color _darkBackgroundColor = Color(0xff111111);
const Color _darkScaffoldBackgroundColor = Color(0xff111111);
const Color _darkBaseColor = Colors.black;
const Color _darkIconBaseColor = Colors.white;
final Color _darkTextButtonBaseColor = Colors.grey.shade900;
final Color _darkIconButtonBaseColor = Colors.grey.shade900;
const Color _darkShadowBaseColor = Color(0x11ffffff);
const Color _darkShadowButtonColor = Color(0x33ffffff);
const Color _darkHeadlineTextColor1 = Colors.white;
const Color _darkHeadlineTextColor2 = Colors.white;
const Color _darkHeadlineTextColor3 = Colors.white;
const Color _darkHeadlineTextColor4 = Colors.white;
const Color _darkHeadlineTextColor5 = Colors.white;
const Color _darkHeadlineTextColor6 = Colors.white;
final Color _darkBodyTextColor1 = Colors.grey.shade50;
const Color _darkBodyTextColor2 = Color(0xffeeeeee);
const Color _darkTextBaseColor = Colors.white;
const Color _darkCardBackgroundColor = Color(0xff222222);
const Color _darkDialogBackgroundColor = Color(0xff222222);
final Color _darkTooltipBackgroundColor = Colors.grey.shade200;
const Color _darkTooltipTextColor = Color(0xff111111);


//------------------- BUILDING APP THEME ------------------//

//Light theme
ThemeData buildLightThemeData() => ThemeData(
  
  brightness: Brightness.light,
  backgroundColor: _lightBackgroundColor,
  primaryColor: _lightPrimaryColor,
  primarySwatch: _lightPrimarySwatch,
  errorColor: _lightErrorColor,
  shadowColor: _lightShadowButtonColor,

  colorScheme: _buildLightColorScheme(),
  
  fontFamily: 'DMSans',
  primaryTextTheme: _buildLightPrimaryTextTheme(),
  textTheme: _buildLightTextTheme(),
  iconTheme: _buildLightIconTheme(),
  
  scaffoldBackgroundColor: _lightBackgroundColor,
  appBarTheme: _buildLightAppBarTheme(),

  textButtonTheme: _buildLightTextButtonTheme(),
  elevatedButtonTheme: _buildLightElevatedButtonTheme(),
  floatingActionButtonTheme: _buildLightFloatingActionButtonTheme(),

  dialogTheme: _buildLightDialogTheme(),

  cardTheme: _buildLightCardTheme(),
  dialogBackgroundColor: _lightDialogBackgroundColor,

  tooltipTheme: _buildLightTooltipTheme(),
  
);

//Dark theme
ThemeData buildDarkThemeData() => ThemeData(
  
  brightness: Brightness.dark,
  backgroundColor: _darkBackgroundColor,
  primaryColor: _darkPrimaryColor,
  primarySwatch: _darkPrimarySwatch,
  errorColor: _darkErrorColor,
  shadowColor: _darkShadowBaseColor,

  colorScheme: _buildDarkColorScheme(),
  
  fontFamily: 'DMSans',
  primaryTextTheme: _buildDarkPrimaryTextTheme(),
  textTheme: _buildDarkTextTheme(),
  iconTheme: _buildDarkIconTheme(),
  
  scaffoldBackgroundColor: _darkBackgroundColor,
  appBarTheme: _buildDarkAppBarTheme(),

  textButtonTheme: _buildDarkTextButtonTheme(),
  elevatedButtonTheme: _buildDarkElevatedButtonTheme(),
  floatingActionButtonTheme: _buildDarkFloatingActionButtonTheme(),

  dialogTheme: _buildDarkDialogTheme(),

  cardTheme: _buildDarkCardTheme(),
  dialogBackgroundColor: _darkDialogBackgroundColor,
  
  tooltipTheme: _buildDarkTooltipTheme(),

);


//--------------------------------------- REUSABLE THEMING METHODS ---------------------------------//

//***** COLOR SCHEME *****/

//Light color scheme
ColorScheme _buildLightColorScheme() => _buildColorScheme(
  primary: _lightPrimaryColor,
  primaryVariant: _lightPrimaryVariant,
  secondary: _lightSecondaryColor,
  secondaryVariant: _lightSecondaryVariant,
  surface: _lightBaseColor,
  background: _lightBackgroundColor,
  error: _lightErrorColor,
  onPrimary: _lightBaseColor,
  onSecondary: _lightBaseColor,
  onSurface: _lightTextBaseColor,
  onBackground: _lightTextBaseColor,
  onError: _lightBaseColor,
  brightness: Brightness.light,
);

//Dark color Scheme
ColorScheme _buildDarkColorScheme() => _buildColorScheme(
  primary: _darkPrimaryColor,
  primaryVariant: _darkPrimaryVariant,
  secondary: _darkSecondaryColor,
  secondaryVariant: _darkSecondaryVariant,
  surface: _darkBaseColor,
  background: _darkBackgroundColor,
  error: _darkErrorColor,
  onPrimary: _darkBaseColor,
  onSecondary: _darkBaseColor,
  onSurface: _darkTextBaseColor,
  onBackground: _darkTextBaseColor,
  onError: _darkBaseColor,
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
  headline6Color: _lightHeadlineTextColor6,
);

//Dark primaryTextTheme
TextTheme _buildDarkPrimaryTextTheme() => _buildPrimaryTextTheme(
  headline6Color: _darkHeadlineTextColor6,
);

TextTheme _buildPrimaryTextTheme({
  required Color headline6Color,
}) => TextTheme(
  headline6: TextStyle( color: headline6Color, ),
);


//***** APPBAR THEME *****

//Light AppBarTheme
AppBarTheme _buildLightAppBarTheme() => _buildAppBarTheme( 
  backgroundColor: _lightBackgroundColor, 
  elevation: 0,
  actionsIconTheme: _buildLightActionsIconTheme(),
);

//Dark AppBarTheme
AppBarTheme _buildDarkAppBarTheme() => _buildAppBarTheme( 
  backgroundColor: _darkBackgroundColor, 
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

//Light IconTheme
IconThemeData _buildLightIconTheme() => _buildIconTheme(
  color: _lightIconBaseColor
);

//Dark IconTheme
IconThemeData _buildDarkIconTheme() => _buildIconTheme(
  color: _darkIconBaseColor
);

IconThemeData _buildIconTheme({
  required Color color,
}) => IconThemeData(
  color: color,
);


//***** ACTIONS ICON THEME *****/

//Light actionsIconTheme
IconThemeData _buildLightActionsIconTheme() => _buildActionsIconTheme(
  color: _lightIconBaseColor,
);

//Dark actionsIconTheme
IconThemeData _buildDarkActionsIconTheme() => _buildActionsIconTheme(
  color: _darkIconBaseColor,
);

IconThemeData _buildActionsIconTheme({ 
  required Color color,
  /*double? opacity,
  double? size,*/
}) => IconThemeData(
  color: color,
  /*opacity: opacity,
  size: size,*/
);


//***** TEXTBUTTON THEME *****/

//Light TextButtonTheme
TextButtonThemeData _buildLightTextButtonTheme() => _buildTextButtonTheme();

//Dark TextButtonTheme
TextButtonThemeData _buildDarkTextButtonTheme() => _buildTextButtonTheme();

TextButtonThemeData _buildTextButtonTheme() => TextButtonThemeData(
  style: TextButton.styleFrom(
    padding: EdgeInsets.symmetric( horizontal: 16, vertical: 10, ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all( Radius.circular( 6 ) )
    ),
    textStyle: TextStyle(
      fontFamily: 'DMSans',
      fontWeight: FontWeight.bold,
    ),
  ),
);


//***** ELEVATEDBUTTON THEME *****/

//Light ElevatedButtonTheme
ElevatedButtonThemeData _buildLightElevatedButtonTheme() => _buildElevatedButtonTheme(
  shadowColor: _lightShadowButtonColor,
);

//Dark TextButtonTheme
ElevatedButtonThemeData _buildDarkElevatedButtonTheme() => _buildElevatedButtonTheme(
  shadowColor: _darkShadowButtonColor,
);

ElevatedButtonThemeData _buildElevatedButtonTheme({
  required Color shadowColor,
}) => ElevatedButtonThemeData(
  style: ElevatedButton.styleFrom(

    animationDuration: Duration( milliseconds: 200, ),
    elevation: 10,
    shadowColor: shadowColor,
    padding: EdgeInsets.symmetric( horizontal: 16, vertical: 10, ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all( Radius.circular( 6 ) )
    ),
    textStyle: TextStyle(
      fontFamily: 'DMSans',
      fontWeight: FontWeight.bold,
    ),
  ),
);


//***** FLOATINGACTIONBUTTON THEME *****/

//Light FloatingActionButtonTheme
FloatingActionButtonThemeData _buildLightFloatingActionButtonTheme() => _buildFloatingActionButtonTheme(
  backgroundColor: _lightPrimaryColor,
  foregroundColor: _lightIconButtonBaseColor,
  hoverColor: _lightPrimaryVariant,
  focusColor: _lightPrimaryVariant,
  splashColor: _lightPrimaryVariant,
);

//Dark FloatingActionButtonTheme
FloatingActionButtonThemeData _buildDarkFloatingActionButtonTheme() => _buildFloatingActionButtonTheme(
  backgroundColor: _darkPrimaryColor,
  foregroundColor: _darkIconButtonBaseColor,
  hoverColor: _darkPrimaryVariant,
  focusColor: _darkPrimaryVariant,
  splashColor: _darkPrimaryVariant,
);

FloatingActionButtonThemeData _buildFloatingActionButtonTheme({
  required Color backgroundColor,
  required Color foregroundColor,
  required Color hoverColor,
  required Color focusColor,
  required Color splashColor,
}) => FloatingActionButtonThemeData(
  backgroundColor: backgroundColor,
  foregroundColor: foregroundColor,
  hoverColor: hoverColor,
  focusColor: focusColor,
  splashColor: splashColor,
  disabledElevation: 0,
  elevation: 10,
  hoverElevation: 12,
  focusElevation: 12,
  highlightElevation: 8,
  enableFeedback: true,
);


/***** DIALOG THEME *****/

//Light DialogTheme
DialogTheme _buildLightDialogTheme() => _buildDialogTheme(
  backgroundColor: _lightDialogBackgroundColor
);

//Dark DialogTheme
DialogTheme _buildDarkDialogTheme() => _buildDialogTheme(
  backgroundColor: _darkDialogBackgroundColor
);

DialogTheme _buildDialogTheme({
  required Color backgroundColor,
}) => DialogTheme(
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.all( Radius.circular( 12 ) ),
  ),
  backgroundColor: backgroundColor,
);


/***** CARD THEME *****/

//Light Card Theme
CardTheme _buildLightCardTheme() => _buildCardTheme(
  elevation: 10,
  cardColor: _lightCardBackgroundColor,
  shadowColor: _lightShadowBaseColor,
);

//Dark Card Theme
CardTheme _buildDarkCardTheme() => _buildCardTheme(
  elevation: 10,
  cardColor: _darkCardBackgroundColor,
  shadowColor: _darkShadowBaseColor,
);

CardTheme _buildCardTheme({
  double elevation = 10,
  required Color cardColor,
  required Color shadowColor,
}) => CardTheme(
  clipBehavior: Clip.antiAlias,
  elevation: elevation,
  shadowColor: shadowColor,
  color: cardColor,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.all( Radius.circular( 12 ) ),
    side: BorderSide.none,
  ),
);

/***** TOOLTIP THEME *****/

//Light Tooltip Theme
TooltipThemeData _buildLightTooltipTheme() => _buildTooltipTheme(
  backgroundColor: _lightTooltipBackgroundColor,
  textColor: _lightTooltipTextColor,
  borderRadius: 8,
  shape: BoxShape.rectangle
);

//Dark Tooltip Theme
TooltipThemeData _buildDarkTooltipTheme() => _buildTooltipTheme(
  backgroundColor: _darkTooltipBackgroundColor,
  textColor: _darkTooltipTextColor,
  borderRadius: 8,
  shape: BoxShape.rectangle,
);

TooltipThemeData _buildTooltipTheme({
  required Color backgroundColor,
  required Color textColor,
  required double borderRadius,
  required BoxShape shape,
}) => TooltipThemeData(
  decoration: BoxDecoration(
    color: backgroundColor,
    borderRadius: BorderRadius.all( Radius.circular( 6 ) ),
    shape: BoxShape.rectangle,
  ),
  textStyle: TextStyle(
    color: textColor,
    fontSize: 14,
    fontWeight: FontWeight.w500,
  ),
);