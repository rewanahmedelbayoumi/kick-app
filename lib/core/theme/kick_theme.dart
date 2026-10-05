import 'package:flutter/material.dart';

import '../constants/app_sizes.dart';
import 'kick_colors.dart';
import 'kick_typography.dart';

abstract final class KickTheme {
  const KickTheme._();

  static ThemeData get light {
    final colorScheme = ColorScheme.fromSeed(
      seedColor: KickColors.electricBlue,
      brightness: Brightness.light,
      primary: KickColors.black,
      secondary: KickColors.electricBlue,
      surface: KickColors.surface,
      error: KickColors.error,
    );

    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      colorScheme: colorScheme,
      scaffoldBackgroundColor: KickColors.background,
      textTheme: KickTypography.textTheme,

      splashFactory: InkSparkle.splashFactory,

      appBarTheme: const AppBarTheme(
        elevation: 0,
        scrolledUnderElevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: KickColors.black,
        centerTitle: false,
      ),

      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: KickColors.surface,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 18,
          vertical: 16,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSizes.radiusMd),
          borderSide: const BorderSide(
            color: KickColors.border,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSizes.radiusMd),
          borderSide: const BorderSide(
            color: KickColors.border,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSizes.radiusMd),
          borderSide: const BorderSide(
            color: KickColors.black,
            width: 1.4,
          ),
        ),
      ),
    );
  }
}