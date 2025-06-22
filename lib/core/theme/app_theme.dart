import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hubx_case_study/core/theme/app_colors.dart';

class AppTheme {
  static ThemeData light(BuildContext context) {
    return ThemeData(
      brightness: Brightness.light,
      scaffoldBackgroundColor: AppColors.backgrounColor,
      primaryColor: AppColors.primary,
      textTheme: GoogleFonts.robotoTextTheme(
        Theme.of(context).textTheme,
      ),
      colorScheme: const ColorScheme.light(
        primary: AppColors.primary,
        onSurface: AppColors.textColor,
        onSurfaceVariant: AppColors.infoTextColor,
      ),
    );
  }

  static ThemeData dark(BuildContext context) {
    return ThemeData(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: AppColors.black,
      primaryColor: AppColors.primary,
      textTheme: GoogleFonts.robotoTextTheme(
        ThemeData.dark().textTheme,
      ),
      colorScheme: const ColorScheme.dark(
        primary: AppColors.primary,
        surface: AppColors.black,
        onSurfaceVariant: AppColors.white,
      ),
    );
  }
}
