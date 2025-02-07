# example

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

# Select Dropdown

A Flutter package that provides a customizable dropdown widget for selecting items.

## Features

- Customizable dropdown menu
- Supports icons and labels
- Easy to integrate with existing forms

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  select_dropdown: ^1.0.0
```

## Usage

import 'package:select_dropdown/select_dropdown.dart';

SelectDropdown(
items: ['Option 1', 'Option 2', 'Option 3'],
onChanged: (value) {
print("Selected: $value");
},
);
