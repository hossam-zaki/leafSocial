import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:leaf/view/pages/home_page.dart';

void main() {
  testWidgets("Testing HomePage widget", (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
        home:
            HomePage())); //if a widget doesn't have a materialapp, enclose it in one

    // Test: Scaffold widget
    expect(find.byType(Scaffold), findsOneWidget);

    // Test: AppBar widget
    expect(find.byType(AppBar), findsOneWidget);

    // Test: 2 Text widgets
    expect(find.byType(Text), findsNWidgets(2));

    // Test: "Leaf" text
    expect(find.text("Leaf"), findsWidgets);
  });
}
