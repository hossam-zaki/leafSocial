import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:leaf/main.dart';
import 'package:leaf/view/pages/home_page.dart';

void main() {
  testWidgets("Testing Leaf widget", (WidgetTester tester) async {
    //the first parameter is the description. The second is the function to test the function takes in a widgettester object
    //async means that the function will run in another thread.
    await tester.pumpWidget(Leaf()); //we get the leaf widget

    // Test: MaterialApp widget presence
    expect(find.byType(MaterialApp),
        findsOneWidget); //find a materialapp, and say that we only find one

    // Test: HomePage widget presence
    expect(find.byType(HomePage),
        findsOneWidget); //find a homepage, which we define
  });
}
