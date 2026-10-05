import 'package:flutter/material.dart';

import '../../../../core/theme/kick_colors.dart';
import '../../domain/models/onboarding_item.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({
    required this.item,
    super.key,
  });

  final OnboardingItem item;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Spacer(),

        Text(
          item.number,
          style: textTheme.labelMedium?.copyWith(
            color: KickColors.electricBlue,
            letterSpacing: 1.2,
          ),
        ),

        const SizedBox(height: 20),

        Text(
          item.title,
          style: textTheme.displayMedium,
        ),

        const SizedBox(height: 18),

        SizedBox(
          width: 330,
          child: Text(
            item.description,
            style: textTheme.bodyLarge?.copyWith(
              color: KickColors.textSecondary,
            ),
          ),
        ),

        const Spacer(flex: 2),
      ],
    );
  }
}