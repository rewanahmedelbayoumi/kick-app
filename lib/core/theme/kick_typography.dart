import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'kick_colors.dart';

abstract final class KickTypography {
  const KickTypography._();

  static TextTheme get textTheme {
    return TextTheme(
      displayLarge: GoogleFonts.spaceGrotesk(
        fontSize: 48,
        height: 0.98,
        fontWeight: FontWeight.w700,
        letterSpacing: -2.2,
        color: KickColors.textPrimary,
      ),

      displayMedium: GoogleFonts.spaceGrotesk(
        fontSize: 40,
        height: 1,
        fontWeight: FontWeight.w700,
        letterSpacing: -1.8,
        color: KickColors.textPrimary,
      ),

      headlineLarge: GoogleFonts.spaceGrotesk(
        fontSize: 32,
        height: 1.05,
        fontWeight: FontWeight.w700,
        letterSpacing: -1.2,
        color: KickColors.textPrimary,
      ),

      headlineMedium: GoogleFonts.spaceGrotesk(
        fontSize: 26,
        height: 1.1,
        fontWeight: FontWeight.w700,
        letterSpacing: -0.8,
        color: KickColors.textPrimary,
      ),

      titleLarge: GoogleFonts.inter(
        fontSize: 20,
        fontWeight: FontWeight.w700,
        color: KickColors.textPrimary,
      ),

      titleMedium: GoogleFonts.inter(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: KickColors.textPrimary,
      ),

      bodyLarge: GoogleFonts.inter(
        fontSize: 16,
        height: 1.5,
        fontWeight: FontWeight.w400,
        color: KickColors.textPrimary,
      ),

      bodyMedium: GoogleFonts.inter(
        fontSize: 14,
        height: 1.45,
        fontWeight: FontWeight.w400,
        color: KickColors.textSecondary,
      ),

      labelLarge: GoogleFonts.inter(
        fontSize: 15,
        fontWeight: FontWeight.w700,
      ),

      labelMedium: GoogleFonts.inter(
        fontSize: 13,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}