import 'package:flutter/material.dart';

import '../../../../core/theme/kick_colors.dart';

class OnboardingIndicator extends StatelessWidget {
  const OnboardingIndicator({
    required this.currentIndex,
    required this.count,
    super.key,
  });

  final int currentIndex;
  final int count;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        count,
            (index) {
          final isActive = index == currentIndex;

          return AnimatedContainer(
            duration: const Duration(milliseconds: 250),
            curve: Curves.easeOutCubic,
            margin: const EdgeInsets.only(right: 6),
            width: isActive ? 28 : 7,
            height: 7,
            decoration: BoxDecoration(
              color: isActive
                  ? KickColors.black
                  : KickColors.border,
              borderRadius: BorderRadius.circular(100),
            ),
          );
        },
      ),
    );
  }
}