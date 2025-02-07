import 'package:flutter/material.dart';
import 'package:select_dropdown/select_dropdown.dart';
// import 'package:select_dropdown/select_dropdown.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Select Dropdown Example")),
        body: Center(
          child: DropdownExample(),
        ),
      ),
    );
  }
}

class DropdownExample extends StatefulWidget {
  const DropdownExample({super.key});

  @override
  _DropdownExampleState createState() => _DropdownExampleState();
}

class _DropdownExampleState extends State<DropdownExample> {
  String? selectedItem;
  final List<String> items = ["Apple", "Banana", "Orange", "Grapes"];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SelectDropdown<String>(
        items: items,
        itemLabel: (item) => item,
        selectedItem: selectedItem,
        hintText: "Choose a fruit",
        onChanged: (value) {
          setState(() {
            selectedItem = value;
          });
        },
      ),
    );
  }
}
