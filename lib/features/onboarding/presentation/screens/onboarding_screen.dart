import 'package:flutter/material.dart';

import '../../../../core/constants/app_strings.dart';
import '../../../../core/theme/kick_colors.dart';
import '../../../../core/widgets/kick_brand_mark.dart';
import '../../../../core/widgets/kick_button.dart';
import '../../domain/models/onboarding_item.dart';
import '../widgets/onboarding_indicator.dart';
import '../widgets/onboarding_page.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({
    required this.onFinished,
    super.key,
  });

  final VoidCallback onFinished;

  @override
  State<OnboardingScreen> createState() =>
      _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();

  int _currentIndex = 0;

  static const _items = [
    OnboardingItem(
      number: '01',
      title: AppStrings.onboardingTitle1,
      description: AppStrings.onboardingBody1,
    ),
    OnboardingItem(
      number: '02',
      title: AppStrings.onboardingTitle2,
      description: AppStrings.onboardingBody2,
    ),
    OnboardingItem(
      number: '03',
      title: AppStrings.onboardingTitle3,
      description: AppStrings.onboardingBody3,
    ),
  ];

  bool get _isLast =>
      _currentIndex == _items.length - 1;

  void _next() {
    if (_isLast) {
      widget.onFinished();
      return;
    }

    _pageController.nextPage(
      duration: const Duration(milliseconds: 380),
      curve: Curves.easeOutCubic,
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KickColors.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(
            22,
            18,
            22,
            24,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  const KickBrandMark(
                    size: 26,
                  ),

                  const Spacer(),

                  if (!_isLast)
                    TextButton(
                      onPressed: widget.onFinished,
                      child: const Text(
                        AppStrings.skip,
                        style: TextStyle(
                          color: KickColors.textSecondary,
                        ),
                      ),
                    ),
                ],
              ),

              Expanded(
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: _items.length,
                  onPageChanged: (index) {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                  itemBuilder: (context, index) {
                    return OnboardingPage(
                      item: _items[index],
                    );
                  },
                ),
              ),

              Row(
                children: [
                  OnboardingIndicator(
                    currentIndex: _currentIndex,
                    count: _items.length,
                  ),
                ],
              ),

              const SizedBox(height: 28),

              KickButton(
                label: _isLast
                    ? AppStrings.startShopping
                    : AppStrings.next,
                icon: Icons.arrow_forward_rounded,
                onPressed: _next,
              ),
            ],
          ),
        ),
      ),
    );
  }
}