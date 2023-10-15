import 'package:flutter/material.dart';

import 'config.dart';

class TextStyles {
  static TextStyle _getTextStyle(double fontSize, String fontFamily, FontWeight fontWeight, Color color) => TextStyle(
        fontSize: fontSize,
        fontFamily: fontFamily,
        color: color,
        fontWeight: fontWeight,
      );

  static TextStyle getRegularStyle({double fontSize = FontSizes.small, required Color color}) => _getTextStyle(
        fontSize,
        FontConstants.fontFamily,
        FontWeights.regular,
        color,
      );

  static TextStyle getLightStyle({double fontSize = FontSizes.small, required Color color}) => _getTextStyle(
        fontSize,
        FontConstants.fontFamily,
        FontWeights.light,
        color,
      );

  static TextStyle getBoldStyle({double fontSize = FontSizes.small, required Color color}) => _getTextStyle(
        fontSize,
        FontConstants.fontFamily,
        FontWeights.light,
        color,
      );

  static TextStyle getSemiBoldStyle({double fontSize = FontSizes.small, required Color color}) => _getTextStyle(
        fontSize,
        FontConstants.fontFamily,
        FontWeights.semibold,
        color,
      );

  static TextStyle getMediumStyle({double fontSize = FontSizes.small, required Color color}) => _getTextStyle(
        fontSize,
        FontConstants.fontFamily,
        FontWeights.medium,
        color,
      );
}
