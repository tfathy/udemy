import 'package:flutter/material.dart';

class DefaultDarkTheme {
  var kDarkScheme = ColorScheme.fromSeed(
    seedColor: const Color.fromARGB(255, 7, 52, 83),
    brightness: Brightness.dark,
  );
  ThemeData defaultThemeData() {
    return ThemeData.dark().copyWith(
      colorScheme: kDarkScheme,
      cardTheme: const CardTheme().copyWith(
          color: kDarkScheme.primaryContainer,
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8)),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
        backgroundColor: kDarkScheme.primaryContainer,
        foregroundColor: kDarkScheme.onPrimaryContainer,
      )),
      dialogTheme: const DialogTheme().copyWith(
        backgroundColor: kDarkScheme.secondaryContainer,
        contentTextStyle: TextStyle(color: kDarkScheme.onSecondaryContainer),
        shadowColor: kDarkScheme.tertiaryContainer,
      ),
      appBarTheme: const AppBarTheme().copyWith(
          titleSpacing: 3,
          titleTextStyle: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          )),
      textTheme: ThemeData.dark().textTheme.copyWith(
          titleLarge: TextStyle(
              fontWeight: FontWeight.normal,
              color: kDarkScheme.onSecondaryContainer,
              backgroundColor: kDarkScheme.primaryContainer,
              fontSize: 16)),
    );
  }
}
