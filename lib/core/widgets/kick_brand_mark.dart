import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../theme/kick_colors.dart';

class KickBrandMark extends StatelessWidget {
  const KickBrandMark({
    super.key,
    this.size = 36,
    this.color = KickColors.black,
  });

  final double size;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      'KICK',
      style: GoogleFonts.spaceGrotesk(
        fontSize: size,
        height: 1,
        fontWeight: FontWeight.w700,
        letterSpacing: -2,
        color: color,
      ),
    );
  }
}