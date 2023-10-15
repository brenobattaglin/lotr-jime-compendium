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
        hintStyle: TextStyles.getRegularStyle(color: AppColors.grey1),
        labelStyle: TextStyles.getMediumStyle(color: AppColors.darkGrey),
        errorStyle: TextStyles.getRegularStyle(color: AppColors.error),
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
        displayLarge: TextStyles.getSemiBoldStyle(
          color: AppColors.darkGrey,
          fontSize: FontSizes.large,
        ),
        titleMedium: TextStyles.getMediumStyle(
          color: AppColors.lightGrey,
          fontSize: FontSizes.medium,
        ),
        titleSmall: TextStyles.getMediumStyle(
          color: AppColors.primary,
          fontSize: FontSizes.medium,
        ),
        bodySmall: TextStyles.getRegularStyle(
          color: AppColors.grey1,
        ),
        bodyLarge: TextStyles.getRegularStyle(
          color: AppColors.grey,
        ),
      );

  static ElevatedButtonThemeData _getElevatedButtonTheme() => ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          textStyle: TextStyles.getRegularStyle(
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
        titleTextStyle: TextStyles.getRegularStyle(
          color: AppColors.white,
          fontSize: FontSizes.large,
        ),
      );
}
