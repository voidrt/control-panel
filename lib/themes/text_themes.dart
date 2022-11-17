import 'package:control_panel_flutter/themes/colors.dart';
import 'package:flutter/material.dart';

class TextStyles {
  static const TextStyle title = TextStyle(
    fontSize: FontSize.defaultTitle,
    fontWeight: FontWeight.w800,
    color: ColorPalette.darkGrey,
  );

  static const TextStyle subtitle = TextStyle(
    fontSize: FontSize.defaultBodySize,
    fontWeight: FontWeight.w500,
    color: ColorPalette.grey,
  );

  static const TextStyle subtitle2 = TextStyle(
    fontSize: FontSize.m,
    fontWeight: FontWeight.w400,
    color: ColorPalette.grey,
  );

  static const TextStyle bodyText2 = TextStyle(
    fontSize: FontSize.m,
    fontWeight: FontWeight.w400,
    color: ColorPalette.darkGrey,
  );

  static const TextStyle bodyText1 = TextStyle(
    fontSize: FontSize.defaultBodySize,
    fontWeight: FontWeight.w500,
    color: ColorPalette.darkGrey,
  );

  static const TextStyle button = TextStyle(
    fontSize: FontSize.defaultTitle,
    fontWeight: FontWeight.w500,
    color: ColorPalette.pureWhite,
  );

  static const TextStyle bigTitle = TextStyle(
    fontSize: FontSize.g,
    fontWeight: FontWeight.bold,
    color: ColorPalette.darkGrey,
  );
}

class FontSize {
  static const double p = 12;
  static const double m = 14;
  static const double defaultBodySize = 16;
  static const double defaultTitle = 22;
  static const double g = 28;
  static const double gg = 36;
  static const double exg = 48;
}
