import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:select_dropdown/select_dropdown.dart';

void main() {
  testWidgets('SelectDropdown displays items', (WidgetTester tester) async {
    List<String> items = ["Item 1", "Item 2", "Item 3"];

    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        body: SelectDropdown<String>(
          items: items,
          itemLabel: (item) => item,
          onChanged: (value) {},
        ),
      ),
    ));

    expect(find.text("Select an item"), findsOneWidget);
  });
}
