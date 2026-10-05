import 'package:flutter/material.dart';

import '../core/theme/kick_theme.dart';
import 'entry_gate.dart';

class KickApp extends StatelessWidget {
  const KickApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KICK',
      debugShowCheckedModeBanner: false,
      theme: KickTheme.light,
      home: const EntryGate(),
    );
  }
}