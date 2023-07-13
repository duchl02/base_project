part of 'app_themes.dart';

ColorScheme get lightColorScheme => ColorScheme.light(
      primary: ColorPalette.blue,
      onPrimary: Colors.white,
      primaryContainer: ColorPalette.blue.shade50,
      onPrimaryContainer: ColorPalette.blue,
      secondary: ColorPalette.orange.shade900,
      secondaryContainer: ColorPalette.yellow.shade50,
      error: ColorPalette.red,
      onError: Colors.white,
      surface: ColorPalette.gray.shade50,
      onSurface: ExColorSysToken.textColor,
      outline: ColorPalette.gray.shade300,
      background: Colors.white,
      onBackground: ExColorSysToken.textColor,
    );

extension ThemeDataExtensions on ColorScheme {
  /// info
  Color get info => ColorPalette.blue.shade800;

  Color get onInfo => Colors.white;

  Color get infoContainer => ColorPalette.blue.shade50;

  Color get outlineInfoContainer => ColorPalette.blue.shade200;

  Color get infoVariant => ColorPalette.blue.shade600;

  Color get onInfoVariant => Colors.white;

  /// success
  Color get success => ColorPalette.green;

  Color get onSuccess => Colors.white;

  Color get successVariant => ColorPalette.green.shade800;

  Color get onSuccessVariant => Colors.white;

  /// warning
  Color get warning => ColorPalette.yellow.shade900;

  Color get onWarning => Colors.black;

  Color get outlineWarning => ColorPalette.gray;

  Color get warningContainer => ColorPalette.yellow.shade50;

  Color get outlineWarningContainer => ColorPalette.yellow.shade900;

  /// disabled
  Color get disabled => ColorPalette.gray.shade500;

  Color get onDisabled => ExColorSysToken.textColor;

  Color get disabledVariant => ColorPalette.gray.shade200;

  Color get onDisabledVariant => ExColorSysToken.textColor;

  ///error
  Color get error2 => ColorPalette.red.shade500;

  Color get onError2 => Colors.white;

  Color get error2Variant => ColorPalette.red.shade50;

  Color get onError2Variant => ExColorSysToken.textColor;

  Color get hintText => ColorPalette.gray.shade800;

  Color get text => ExColorSysToken.textColor;

  Color get textVariant => ColorPalette.gray;

  Color get outlineSecondary => ColorPalette.yellow.shade900;

  Color get primaryVariant => const Color(0xFF146ADB);

  LinearGradient get primaryGradient => LinearGradient(
        colors: [primaryVariant, primary],
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
      );

  LinearGradient get backgroundGradient => LinearGradient(
        colors: [ColorPalette.blue.shade50, ColorPalette.gray.shade50],
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
      );
}

extension LinearGradientExtension on LinearGradient {
  LinearGradient copyWith({
    AlignmentGeometry? begin,
    AlignmentGeometry? end,
    List<Color>? colors,
    List<double>? stops,
    TileMode? tileMode,
    GradientTransform? transform,
  }) {
    return LinearGradient(
      begin: begin ?? this.begin,
      end: end ?? this.end,
      colors: colors ?? this.colors,
      stops: stops ?? this.stops,
      tileMode: tileMode ?? this.tileMode,
      transform: transform ?? this.transform,
    );
  }
}
