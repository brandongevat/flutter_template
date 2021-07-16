// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_template/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    expect(find.text('This is the home screen.'), findsOneWidget);
    expect(find.text('This is the profile screen.'), findsNothing);
    await tester.tap(find.byIcon(Icons.account_circle));
    await tester.pump();
    expect(find.text('This is the home screen.'), findsNothing);
    expect(find.text('This is the profile screen.'), findsOneWidget);
  });
}
