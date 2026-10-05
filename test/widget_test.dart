// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';

import 'package:kick/app/kick_app.dart';

void main() {
  testWidgets('KICK app launches successfully', (WidgetTester tester) async {
    // Build the KICK app and trigger the first frame.
    await tester.pumpWidget(const KickApp());

    // Verify that the splash screen displays the KICK brand.
    expect(find.text('KICK'), findsOneWidget);
  });
}