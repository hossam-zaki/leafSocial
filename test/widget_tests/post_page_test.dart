import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:leaf/view/pages/post_page.dart';

void main() {
  testWidgets("Testing HomePage widget", (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
        home:
            PostPage())); //if a widget doesn't have a materialapp, enclose it in one

    // Test: Scaffold widget
    expect(find.byType(Scaffold), findsOneWidget);
  });
}
