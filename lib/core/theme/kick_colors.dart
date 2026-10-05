import 'package:flutter/material.dart';

abstract final class KickColors {
  const KickColors._();

  // Brand
  static const Color black = Color(0xFF0B0B0C);
  static const Color white = Color(0xFFFFFFFF);

  static const Color electricBlue = Color(0xFF1769FF);
  static const Color volt = Color(0xFFD7FF35);

  // Backgrounds
  static const Color background = Color(0xFFF7F7F5);
  static const Color surface = Color(0xFFFFFFFF);
  static const Color surfaceDark = Color(0xFF151516);

  // Text
  static const Color textPrimary = Color(0xFF0B0B0C);
  static const Color textSecondary = Color(0xFF717176);
  static const Color textTertiary = Color(0xFFA1A1A6);

  // Borders
  static const Color border = Color(0xFFE5E5E7);
  static const Color divider = Color(0xFFEDEDEF);

  // Feedback
  static const Color success = Color(0xFF1F9D61);
  static const Color error = Color(0xFFD92D20);
  static const Color warning = Color(0xFFF59E0B);

  // Disabled
  static const Color disabled = Color(0xFFD1D1D6);
}