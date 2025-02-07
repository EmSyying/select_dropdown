/// A Calculator.
library;

import 'package:flutter/material.dart';

class SelectDropdown<T> extends StatefulWidget {
  final List<T> items;
  final T? selectedItem;
  final String Function(T) itemLabel;
  final ValueChanged<T?> onChanged;
  final String? hintText;
  final bool isSearchable;

  const SelectDropdown({
    super.key,
    required this.items,
    required this.itemLabel,
    required this.onChanged,
    this.selectedItem,
    this.hintText,
    this.isSearchable = false,
  });

  @override
  _SelectDropdownState<T> createState() => _SelectDropdownState<T>();
}

class _SelectDropdownState<T> extends State<SelectDropdown<T>> {
  late TextEditingController _searchController;
  List<T> _filteredItems = [];

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
    _filteredItems = widget.items;
  }

  void _filterItems(String query) {
    setState(() {
      _filteredItems = widget.items
          .where((item) => widget
              .itemLabel(item)
              .toLowerCase()
              .contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton<T>(
      value: widget.selectedItem,
      hint: Text(widget.hintText ?? "Select an item"),
      isExpanded: true,
      onChanged: widget.onChanged,
      items: _filteredItems.map((T item) {
        return DropdownMenuItem<T>(
          value: item,
          child: Text(widget.itemLabel(item)),
        );
      }).toList(),
    );
  }
}
