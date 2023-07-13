import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'refference_token/refference_token.dart';

export 'refference_token/refference_token.dart';

part 'color_palette.dart';
part 'ex_color_sys_token.dart';
part 'color_scheme.dart';
part 'text_theme.dart';

ThemeData get lightTheme => ThemeData(
      brightness: Brightness.light,
      colorScheme: lightColorScheme,
      primaryTextTheme: Typography.blackCupertino,
      listTileTheme: ListTileThemeData(
        tileColor: lightColorScheme.background,
        contentPadding: EdgeInsets.symmetric(horizontal: 25.w),
        iconColor: lightColorScheme.primary,
      ),
      appBarTheme: AppBarTheme(
        color: lightColorScheme.background,
        titleTextStyle: appTextTheme.labelLarge?.copyWith(
          fontWeight: FontWeight.bold,
          color: lightColorScheme.text,
        ),
      ),
      cardTheme: CardTheme(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(BorderRadiusRefToken.xl.r),
          side: BorderSide(color: lightColorScheme.outline),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderRadius:
              BorderRadius.all(Radius.circular(BorderRadiusRefToken.md.r)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius:
              BorderRadius.all(Radius.circular(BorderRadiusRefToken.md.r)),
          borderSide: BorderSide(color: lightColorScheme.outline),
        ),
        fillColor: lightColorScheme.onPrimary,
        labelStyle: appTextTheme.bodySmall,
        filled: true,
        contentPadding: EdgeInsets.symmetric(
          horizontal: EdgeInsetsRefToken.md.sp,
          vertical: EdgeInsetsRefToken.sm.sp,
        ),
        hintStyle: appTextTheme.bodyLarge?.copyWith(
          color: ColorPalette.gray.shade800,
          fontWeight: FontWeight.bold,
        ),
        constraints: BoxConstraints(minHeight: 42.sp),
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          minimumSize: Size.fromHeight(46.sp),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(BorderRadiusRefToken.md.r)),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          minimumSize: Size.fromHeight(46.sp),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(BorderRadiusRefToken.md.r)),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          minimumSize: Size.fromHeight(46.sp),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(BorderRadiusRefToken.md.r)),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          minimumSize: Size.fromHeight(46.sp),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(BorderRadiusRefToken.md.r)),
        ),
      ),
      textTheme: appTextTheme,
    );

final darkTheme = ThemeData(
  brightness: Brightness.dark,
);
