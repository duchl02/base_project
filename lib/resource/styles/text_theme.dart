part of 'app_themes.dart';

TextTheme appTextTheme = TextTheme(
  displayLarge: TextStyle(
    fontSize: 96.sp,
    fontWeight: FontWeight.w300,
    letterSpacing: -1.5,
  ),
  // headline1
  displayMedium: TextStyle(
    fontSize: 60.sp,
    fontWeight: FontWeight.w300,
    letterSpacing: -0.5,
  ),
  // headline2
  displaySmall: TextStyle(
    fontSize: 48.sp,
    fontWeight: FontWeight.normal,
    letterSpacing: 0,
  ),
  // headline3
  headlineMedium: TextStyle(
    fontSize: 30.sp,
    fontWeight: FontWeight.normal,
    letterSpacing: 0,
  ),
  // headline4
  headlineSmall: TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.bold,
    letterSpacing: 0,
  ),
  // headline5
  titleLarge: TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.bold,
    letterSpacing: 0,
  ),
  // headline6
  titleMedium: TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.bold,
    letterSpacing: 0,
  ),
  // subtitle1
  titleSmall: TextStyle(
    fontSize: 15.sp,
    fontWeight: FontWeight.bold,
    letterSpacing: 0,
  ),
  // subtitle2
  bodyLarge: TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.normal,
    letterSpacing: 0,
  ),
  // bodyText1
  bodyMedium: TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeight.normal,
    letterSpacing: 0,
  ),
  // bodyText2
  labelLarge: TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
    letterSpacing: 0,
  ),
  // button
  bodySmall: TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.normal,
    letterSpacing: 0,
  ),
  // caption
  labelSmall: TextStyle(
    fontSize: 10.sp,
    fontWeight: FontWeight.normal,
    letterSpacing: 0,
  ), // overline
).apply(displayColor: ExColorSysToken.textColor);
