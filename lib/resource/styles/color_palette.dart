part of 'app_themes.dart';

class ColorPalette {
  const ColorPalette._();

  static const blue = MaterialColor(
    _bluePrimaryValue,
    <int, Color>{
      50: Color(0xFFF2F8FF),
      100: Color(0xFFF2F6FF),
      200: Color(0xFFA0C1FF),
      300: Color(0xFF99B5FE),
      400: Color(0xFF8BAEFF),
      500: Color(0xFF6B97FF),
      600: Color(0xFF427AFF),
      700: Color(0xFF0D5FC3),
      800: Color(0xFF1750C4),
      900: Color(_bluePrimaryValue),
    },
  );
  static const int _bluePrimaryValue = 0xff0C4DA2;

  static const orange = MaterialColor(
    _orangePrimaryValue,
    <int, Color>{
      50: Color(0xFFFFFCF3),
      100: Color(0xFFFFDEB7),
      200: Color(0xFFFFC178),
      300: Color(0xFFFFBB6A),
      400: Color(0xFFFFB257),
      500: Color(0xFFFFAC49),
      600: Color(_orangePrimaryValue),
      700: Color(0xFFFFA132),
      800: Color(0xFFFD9822),
      900: Color(0xFFFF8A01),
    },
  );
  static const int _orangePrimaryValue = 0xffFFA53A;

  static const yellow = MaterialColor(
    _yellowPrimaryValue,
    <int, Color>{
      50: Color(0xFFFFFDF3),
      100: Color(0xFFFFFAC9),
      200: Color(0xFFFFF8B9),
      300: Color(0xFFFFF6A9),
      400: Color(0xFFFFF495),
      500: Color(0xFFFFF389),
      600: Color(0xFFFFEF63),
      700: Color(0xFFFCF00D),
      800: Color(_yellowPrimaryValue),
      900: Color(0xFFFECE00),
    },
  );
  static const int _yellowPrimaryValue = 0xffFFF200;

  static const red = MaterialColor(
    _redPrimaryValue,
    <int, Color>{
      50: Color(0xFFFFEEEF),
      100: Color(0xFFFFC3C5),
      200: Color(0xFFFFADAF),
      300: Color(0xFFFF8E91),
      400: Color(0xFFFB7578),
      500: Color(0xFFF36268),
      600: Color(0xFFE45E61),
      700: Color(0xFFEA494D),
      800: Color(0xFFE53438),
      900: Color(_redPrimaryValue),
    },
  );
  static const int _redPrimaryValue = 0xffE22929;

  static const green = MaterialColor(
    _greenPrimaryValue,
    <int, Color>{
      50: Color(0xFFF0FEF6),
      100: Color(0xFFD7FFE7),
      200: Color(0xFFB3FBD0),
      300: Color(0xFF9FFBC4),
      400: Color(0xFF8AF8B7),
      500: Color(0xFF77F1A9),
      600: Color(0xFF5EEA98),
      700: Color(0xFF40E082),
      800: Color(0xFF31CC71),
      900: Color(_greenPrimaryValue),
    },
  );
  static const int _greenPrimaryValue = 0xff1EB960;

  static const gray = MaterialColor(
    _grayPrimaryValue,
    <int, Color>{
      50: Color(0xFFFAFAFA),
      100: Color(0xFFF8F8F8),
      200: Color(0xFFF1F1F1),
      300: Color(0xFFE8E8E8),
      400: Color(0xFFE3E3E3),
      500: Color(0xFFDDDDDD),
      600: Color(0xFFC8C8C8),
      700: Color(0xFFB8B8B8),
      800: Color(0xFFA0A0A0),
      900: Color(_grayPrimaryValue),
    },
  );
  static const int _grayPrimaryValue = 0xFF686868;
}
