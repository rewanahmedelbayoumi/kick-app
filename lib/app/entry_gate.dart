import 'package:flutter/material.dart';

import '../features/onboarding/presentation/screens/onboarding_screen.dart';
import '../features/splash/presentation/screens/splash_screen.dart';

enum EntryStage {
  splash,
  onboarding,
  complete,
}

class EntryGate extends StatefulWidget {
  const EntryGate({
    super.key,
  });

  @override
  State<EntryGate> createState() => _EntryGateState();
}

class _EntryGateState extends State<EntryGate> {
  EntryStage _stage = EntryStage.splash;

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 400),
      child: switch (_stage) {
        EntryStage.splash => SplashScreen(
          key: const ValueKey('splash'),
          onFinished: () {
            setState(() {
              _stage = EntryStage.onboarding;
            });
          },
        ),

        EntryStage.onboarding => OnboardingScreen(
          key: const ValueKey('onboarding'),
          onFinished: () {
            setState(() {
              _stage = EntryStage.complete;
            });
          },
        ),

        EntryStage.complete => const _PhaseOneCompleteScreen(
          key: ValueKey('complete'),
        ),
      },
    );
  }
}

class _PhaseOneCompleteScreen extends StatelessWidget {
  const _PhaseOneCompleteScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'KICK',
        ),
      ),
    );
  }
}