import 'package:flutter/material.dart';
import 'package:more_tech/presentation/theme/app_colors.dart';

extension LogicSize on num {
  static const double _scaleFactor = 0.8;
  double get sc => this * _scaleFactor;
}

abstract class AppTheme {
  static ThemeData get lightTheme => ThemeData(
    scaffoldBackgroundColor: AppColors.background,
    textTheme: TextTheme(
        headline1: TextStyle(
          fontSize: 48.sc,
          fontWeight: FontWeight.w700,
          color: AppColors.textWhite,
        ),
        headline2: TextStyle(
          fontSize: 32.sc,
          fontWeight: FontWeight.w600,
          color: AppColors.textWhite,
        ),
        headline3: TextStyle(
          fontSize: 24.sc,
          fontWeight: FontWeight.w500,
          color: AppColors.textWhite,
        ),
        headline4: TextStyle(
          fontSize: 20.sc,
          fontWeight: FontWeight.w500,
          color: AppColors.textWhite,
        ),
        bodyText1: TextStyle(
          fontSize: 20.sc,
          fontWeight: FontWeight.w400,
          color: AppColors.textWhite,
        ),
        bodyText2: TextStyle(
          fontSize: 16.sc,
          fontWeight: FontWeight.w500,
          color: AppColors.textWhite,
        ),
        caption: TextStyle(
          fontSize: 16.sc,
          fontWeight: FontWeight.w400,
        )),
  );
}
