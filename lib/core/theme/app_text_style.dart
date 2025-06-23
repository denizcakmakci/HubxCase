import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hubx_case_study/core/theme/app_colors.dart';

class AppTextStyles {
  static TextStyle headlineLarge(BuildContext context) {
    final color = Theme.of(context).colorScheme.onSurface;
    return GoogleFonts.roboto(
      textStyle: Theme.of(context).textTheme.headlineLarge,
      color: color,
      fontSize: 28,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle headlineLargeW300(BuildContext context) {
    final color = Theme.of(context).colorScheme.onSurface;
    return GoogleFonts.roboto(
      textStyle: Theme.of(context).textTheme.headlineLarge,
      color: color,
      fontSize: 28,
      fontWeight: FontWeight.w300,
    );
  }

  static TextStyle headlineLarge500(BuildContext context) {
    final color = Theme.of(context).colorScheme.onSurface;
    return GoogleFonts.roboto(
      textStyle: Theme.of(context).textTheme.headlineLarge,
      color: color,
      fontSize: 28,
      fontWeight: FontWeight.w500,
      letterSpacing: -1,
    );
  }

  static TextStyle headlineLarge600(BuildContext context) {
    final color = Theme.of(context).colorScheme.onSurface;
    return GoogleFonts.roboto(
      textStyle: Theme.of(context).textTheme.headlineLarge,
      color: color,
      fontSize: 28,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle headlineLarge800(BuildContext context) {
    final color = Theme.of(context).colorScheme.onSurface;
    return GoogleFonts.roboto(
      textStyle: Theme.of(context).textTheme.headlineLarge,
      color: color,
      fontSize: 28,
      fontWeight: FontWeight.w800,
      letterSpacing: -1,
    );
  }

  static TextStyle titleLarge(BuildContext context) {
    final color = Theme.of(context).colorScheme.onSurface;
    return GoogleFonts.roboto(
      textStyle: Theme.of(context).textTheme.titleLarge,
      color: color,
      fontSize: 24,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle headlineMedium(BuildContext context) {
    final color = Theme.of(context).colorScheme.onSurfaceVariant;
    return GoogleFonts.roboto(
      textStyle: Theme.of(context).textTheme.headlineMedium,
      color: color,
      fontSize: 16,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle headlineMedium500(BuildContext context) {
    final color = Theme.of(context).colorScheme.onPrimary;
    return GoogleFonts.roboto(
      textStyle: Theme.of(context).textTheme.headlineMedium,
      color: color,
      fontSize: 16,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle displayLarge(BuildContext context) {
    final color = Theme.of(context).colorScheme.onPrimary;
    return GoogleFonts.roboto(
      textStyle: Theme.of(context).textTheme.displayLarge,
      color: color,
      fontSize: 20,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle displaySmall(BuildContext context) {
    final color = Theme.of(context).colorScheme.onPrimary;
    return GoogleFonts.roboto(
      textStyle: Theme.of(context).textTheme.displaySmall,
      color: color.withValues(alpha: 0.7),
      fontSize: 13,
      fontWeight: FontWeight.w400,
      letterSpacing: -0.08,
    );
  }

  static TextStyle bodyMedium300(BuildContext context) {
    final color = Theme.of(context).colorScheme.onPrimary;
    return GoogleFonts.roboto(
      textStyle: Theme.of(context).textTheme.bodyMedium,
      color: color.withValues(alpha: 0.7),
      fontSize: 17,
      fontWeight: FontWeight.w300,
    );
  }

  static TextStyle bodyMedium(BuildContext context) {
    final color = Theme.of(context).colorScheme.onPrimary;
    return GoogleFonts.roboto(
      textStyle: Theme.of(context).textTheme.bodyMedium,
      color: color,
      fontSize: 16,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle bodyMedium500(BuildContext context) {
    final color = Theme.of(context).colorScheme.onSurface;
    return GoogleFonts.roboto(
      textStyle: Theme.of(context).textTheme.bodyMedium,
      color: color,
      fontSize: 16,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle bodyMedium700(BuildContext context) {
    final color = Theme.of(context).colorScheme.onPrimary;
    return GoogleFonts.roboto(
      textStyle: Theme.of(context).textTheme.bodyMedium,
      color: color,
      fontSize: 16,
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle bodySmall(BuildContext context) {
    final color = Theme.of(context).colorScheme.onPrimary;
    return GoogleFonts.roboto(
      textStyle: Theme.of(context).textTheme.bodySmall,
      color: color,
      fontSize: 12,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle bodySmall300(BuildContext context) {
    final color = Theme.of(context).colorScheme.onPrimary;
    return GoogleFonts.roboto(
      textStyle: Theme.of(context).textTheme.bodySmall,
      color: color.withValues(alpha: 0.7),
      fontSize: 12,
      fontWeight: FontWeight.w300,
    );
  }

  static TextStyle labelMedium(BuildContext context) {
    final color = Theme.of(
      context,
    ).colorScheme.onSurfaceVariant.withValues(alpha: 0.7);
    return GoogleFonts.roboto(
      textStyle: Theme.of(context).textTheme.labelMedium,
      color: color,
      fontSize: 11,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle labelSmall(BuildContext context) {
    final color = Theme.of(
      context,
    ).colorScheme.onPrimary.withValues(alpha: 0.52);
    return GoogleFonts.roboto(
      textStyle: Theme.of(context).textTheme.labelSmall,
      color: color,
      fontSize: 9,
      fontWeight: FontWeight.w300,
    );
  }

  static TextStyle titleMedium(BuildContext context) {
    return GoogleFonts.rubik(
      textStyle: Theme.of(context).textTheme.titleMedium,
      color: AppColors.lighterGray,
      fontSize: 15.5,
      fontWeight: FontWeight.w400,
    );
  }
}
