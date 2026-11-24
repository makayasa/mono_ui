import 'package:flutter/material.dart';

const ink = Color(0xFF191919);
const paper = Color(0xFFFFFFFF);
const muted = Color(0xFF787774);
const chip = Color(0xFFF1F1EF);
const line = Color(0xFFE9E9E7);

ThemeData monoTheme() {
  final scheme =
      ColorScheme.fromSeed(
        seedColor: ink,
        brightness: Brightness.light,
      ).copyWith(
        primary: ink,
        onPrimary: paper,
        surface: paper,
        onSurface: ink,
        outline: muted,
        outlineVariant: line,
        secondary: ink,
        error: ink,
      );
  return ThemeData(
    useMaterial3: true,
    colorScheme: scheme,
    scaffoldBackgroundColor: paper,
    dividerColor: line,
    visualDensity: VisualDensity.standard,
    appBarTheme: const AppBarTheme(
      backgroundColor: paper,
      foregroundColor: ink,
      surfaceTintColor: Colors.transparent,
      elevation: 0,
    ),
    textTheme: const TextTheme(
      headlineLarge: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w700,
        letterSpacing: -0.8,
      ),
      headlineSmall: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w700,
        letterSpacing: -0.5,
      ),
      titleLarge: TextStyle(fontSize: 19, fontWeight: FontWeight.w600),
      titleMedium: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
      bodyMedium: TextStyle(fontSize: 14, height: 1.45),
      bodySmall: TextStyle(fontSize: 12, height: 1.4, color: muted),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: paper,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: line),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: line),
      ),
    ),
    filledButtonTheme: FilledButtonThemeData(
      style: FilledButton.styleFrom(
        minimumSize: const Size(48, 48),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        minimumSize: const Size(48, 48),
        side: const BorderSide(color: line),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    ),
    progressIndicatorTheme: const ProgressIndicatorThemeData(color: ink),
  );
}
