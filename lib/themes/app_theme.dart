import 'package:flutter/material.dart';
//---------------------------------------------
import 'package:control_panel_flutter/themes/colors.dart';
import 'text_themes.dart';

class AppTheme {
  static var appTheme = ThemeData().copyWith(
    useMaterial3: true,
    primaryColor: ColorPalette.primary,
    primaryColorDark: ColorPalette.secondary,
    scaffoldBackgroundColor: ColorPalette.background,
    unselectedWidgetColor: Colors.white.withOpacity(0.67),
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      elevation: 3,
      toolbarHeight: 50,
    ),
    inputDecorationTheme: const InputDecorationTheme().copyWith(
      focusColor: ColorPalette.black,
      labelStyle: const TextStyle(
        fontWeight: FontWeight.w400,
        color: ColorPalette.black,
      ),
    ),
    textTheme: const TextTheme().copyWith(
      bodyText1: TextStyles.bodyText1,
      bodyText2: TextStyles.bodyText2,
      button: TextStyles.button,
      subtitle1: TextStyles.subtitle,
      subtitle2: TextStyles.subtitle2,
      headline6: TextStyles.title,
      headline1: TextStyles.bigTitle,
    ),
  );
}
