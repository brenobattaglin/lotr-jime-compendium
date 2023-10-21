import 'package:flutter/material.dart';

import 'config.dart';

class AppTextStyles {
  static TextStyle _getTextStyle(double fontSize, String fontFamily, FontWeight fontWeight, Color color) => TextStyle(
        fontSize: fontSize,
        fontFamily: fontFamily,
        color: color,
        fontWeight: fontWeight,
      );

  static TextStyle getRegularStyle({double fontSize = AppFontSize.small, required Color color}) => _getTextStyle(
        fontSize,
        AppFont.fontFamily,
        AppFontWeight.regular,
        color,
      );

  static TextStyle getLightStyle({double fontSize = AppFontSize.small, required Color color}) => _getTextStyle(
        fontSize,
        AppFont.fontFamily,
        AppFontWeight.light,
        color,
      );

  static TextStyle getBoldStyle({double fontSize = AppFontSize.small, required Color color}) => _getTextStyle(
        fontSize,
        AppFont.fontFamily,
        AppFontWeight.light,
        color,
      );

  static TextStyle getSemiBoldStyle({double fontSize = AppFontSize.small, required Color color}) => _getTextStyle(
        fontSize,
        AppFont.fontFamily,
        AppFontWeight.semibold,
        color,
      );

  static TextStyle getMediumStyle({double fontSize = AppFontSize.small, required Color color}) => _getTextStyle(
        fontSize,
        AppFont.fontFamily,
        AppFontWeight.medium,
        color,
      );
}
