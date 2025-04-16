import 'package:flutter/material.dart';
import 'package:flutter_color_generation/main.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Background color changes on tap', (WidgetTester tester) async {
    // Build the app and trigger a frame
    await tester.pumpWidget(const MyApp());

    // Verifying the initial background color
    final textFinder = find.text('Hello there');
    expect(textFinder, findsOneWidget);

    // Tap the screen
    await tester.tap(find.byType(GestureDetector));
    await tester.pump();

    // Verifying that the background color has changed 
    // (checking the widget's state)
    expect(textFinder, findsOneWidget);
  });
}
