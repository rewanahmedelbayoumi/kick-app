import 'package:flutter/material.dart';

import '../constants/app_sizes.dart';

class KickScaffold extends StatelessWidget {
  const KickScaffold({
    required this.body,
    super.key,
    this.appBar,
    this.bottomNavigationBar,
    this.useSafeArea = true,
    this.padding = const EdgeInsets.symmetric(
      horizontal: AppSizes.pagePadding,
    ),
  });

  final Widget body;
  final PreferredSizeWidget? appBar;
  final Widget? bottomNavigationBar;
  final bool useSafeArea;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    Widget child = Padding(
      padding: padding,
      child: body,
    );

    if (useSafeArea) {
      child = SafeArea(child: child);
    }

    return Scaffold(
      appBar: appBar,
      bottomNavigationBar: bottomNavigationBar,
      body: child,
    );
  }
}