import 'package:expenses_tracker/expenses.dart';
import 'package:expenses_tracker/themes/default_dark_theme.dart';
import 'package:expenses_tracker/themes/default_theme.dart';
import 'package:flutter/material.dart';

void main() {
  final myDefaultTheme = DefaultTheme();
  final myDefaultDarkTheme = DefaultDarkTheme();
  runApp(
    MaterialApp(
      darkTheme: myDefaultDarkTheme.defaultThemeData(),
      theme: myDefaultTheme.defaultThemeData(),
      home: const Expenses(),
      themeMode: ThemeMode.system,
    ),
  );
}
