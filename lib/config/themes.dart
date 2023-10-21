import 'package:flutter/material.dart';

import 'config.dart';

class Themes {
  static final ThemeData lightTheme = ThemeData(
    primaryColor: AppColors.primary,
    primaryColorLight: AppColors.primary,
    primaryColorDark: AppColors.darkPrimary,
    disabledColor: AppColors.grey1,
    splashColor: AppColors.darkPrimary,
    cardTheme: _getCardTheme(),
    appBarTheme: _getAppBarTheme(),
    buttonTheme: _getButtonTheme(),
    elevatedButtonTheme: _getElevatedButtonTheme(),
    textTheme: _getTextTheme(),
    inputDecorationTheme: _getInputDecorationTheme(),
    colorScheme: ColorScheme.fromSwatch().copyWith(secondary: AppColors.grey),
  );

  static CardTheme _getCardTheme() => const CardTheme(
        color: AppColors.white,
        shadowColor: AppColors.grey,
        elevation: AppSize.s4,
      );

  static InputDecorationTheme _getInputDecorationTheme() => InputDecorationTheme(
        contentPadding: const EdgeInsets.all(AppPadding.p8),
        hintStyle: AppTextStyles.getRegularStyle(color: AppColors.grey1),
        labelStyle: AppTextStyles.getMediumStyle(color: AppColors.darkGrey),
        errorStyle: AppTextStyles.getRegularStyle(color: AppColors.error),
        //enabled border
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.grey,
            width: AppSize.s1_5,
          ),
          borderRadius: BorderRadius.all(Radius.circular(AppSize.s8)),
        ),
        //focused border
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.primary,
            width: AppSize.s1_5,
          ),
          borderRadius: BorderRadius.all(Radius.circular(AppSize.s8)),
        ),
        errorBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.error,
            width: AppSize.s1_5,
          ),
          borderRadius: BorderRadius.all(Radius.circular(AppSize.s8)),
        ),
        focusedErrorBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.primary,
            width: AppSize.s1_5,
          ),
          borderRadius: BorderRadius.all(Radius.circular(AppSize.s8)),
        ),
      );

  static TextTheme _getTextTheme() => TextTheme(
        displayLarge: AppTextStyles.getSemiBoldStyle(
          color: AppColors.darkGrey,
          fontSize: AppFontSize.large,
        ),
        titleMedium: AppTextStyles.getMediumStyle(
          color: AppColors.lightGrey,
          fontSize: AppFontSize.medium,
        ),
        titleSmall: AppTextStyles.getMediumStyle(
          color: AppColors.primary,
          fontSize: AppFontSize.medium,
        ),
        bodySmall: AppTextStyles.getRegularStyle(
          color: AppColors.grey1,
        ),
        bodyLarge: AppTextStyles.getRegularStyle(
          color: AppColors.grey,
        ),
      );

  static ElevatedButtonThemeData _getElevatedButtonTheme() => ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          textStyle: AppTextStyles.getRegularStyle(
            color: AppColors.white,
          ),
          backgroundColor: AppColors.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              AppSize.s12,
            ),
          ),
        ),
      );

  static ButtonThemeData _getButtonTheme() => const ButtonThemeData(
        shape: StadiumBorder(),
        disabledColor: AppColors.grey1,
        buttonColor: AppColors.primary,
        splashColor: AppColors.darkPrimary,
      );

  static AppBarTheme _getAppBarTheme() => AppBarTheme(
        centerTitle: true,
        color: AppColors.primary,
        elevation: AppSize.s4,
        shadowColor: AppColors.darkPrimary,
        titleTextStyle: AppTextStyles.getRegularStyle(
          color: AppColors.white,
          fontSize: AppFontSize.large,
        ),
      );
}
