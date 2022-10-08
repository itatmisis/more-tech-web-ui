import 'package:flutter/material.dart';
import 'package:more_tech/presentation/theme/app_colors.dart';

abstract class AppTheme {
  static ThemeData get lightTheme => ThemeData(
    scaffoldBackgroundColor: AppColors.background,
        textTheme: const TextTheme(
            headline1: TextStyle(
              fontSize: 48,
              height: 56 / 48,
              fontWeight: FontWeight.w700,
              color: AppColors.textWhite,
              fontFamily: 'Roboto Flex',
            ),
            headline2: TextStyle(
              fontSize: 32,
              height: 38 / 32,
              fontWeight: FontWeight.w600,
              color: AppColors.textWhite,
              fontFamily: 'Roboto Flex',
            ),
            headline3: TextStyle(
              fontSize: 24,
              height: 28 / 24,
              fontWeight: FontWeight.w500,
              color: AppColors.textWhite,
              fontFamily: 'Roboto Flex',
            ),
            bodyText2: TextStyle(
              fontSize: 16,
              height: 19 / 16,
              fontWeight: FontWeight.w500,
              color: AppColors.textWhite,
              fontFamily: 'Roboto Flex',
            ),
            caption: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14,
              height: 16 / 14,
              fontFamily: 'Roboto Flex',
            )),
      );
}
