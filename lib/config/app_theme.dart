// lib/config/app_theme.dart

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  // Light Theme Data
  static ThemeData get lightTheme {
    Color primaryTextColor = const Color(0xFF3F414E);
    Color secondaryTextColor = const Color(0xFFA1A4B2);

    return ThemeData(
      brightness: Brightness.light,
      primaryColor: const Color(0xFF8E97FD),
      primaryColorDark: const Color(0xFF3F414E),
      primaryColorLight: Colors.white,
      dividerTheme: DividerThemeData(color: secondaryTextColor),
      textTheme: TextTheme(
        displayLarge: GoogleFonts.abel(
          fontSize: 57, // Display terbesar untuk teks utama atau header besar
          color: primaryTextColor,
          fontWeight: FontWeight.w300,
        ),
        displayMedium: GoogleFonts.abel(
          fontSize:
              45, // Display sedang, digunakan untuk header besar namun tidak dominan
          color: primaryTextColor,
          fontWeight: FontWeight.w300,
        ),
        displaySmall: GoogleFonts.abel(
          fontSize: 36, // Display kecil, untuk sub-header atau judul penting
          color: primaryTextColor,
          fontWeight: FontWeight.bold,
        ),
        headlineLarge: GoogleFonts.abel(
          fontSize: 32, // Ukuran untuk headline atau judul utama
          color: secondaryTextColor,
        ),
        headlineMedium: GoogleFonts.abel(
          fontSize: 28, // Ukuran headline menengah
          color: primaryTextColor,
        ),
        headlineSmall: GoogleFonts.abel(
          fontSize: 24, // Ukuran headline kecil
          color: primaryTextColor,
        ),
        titleLarge: GoogleFonts.abel(
          fontSize: 22, // Ukuran besar untuk judul utama di layar
          color: secondaryTextColor,
        ),
        titleMedium: GoogleFonts.abel(
          fontSize: 18, // Ukuran sedang untuk judul atau subtitle
          color: primaryTextColor,
          fontWeight: FontWeight.bold,
        ),
        titleSmall: GoogleFonts.abel(
          fontSize: 14, // Ukuran kecil untuk subtitle atau label
          color: secondaryTextColor,
          fontWeight: FontWeight.w300,
        ),
        bodyLarge: GoogleFonts.abel(
          fontSize: 16, // Ukuran teks utama
          color: primaryTextColor,
        ),
        bodyMedium: GoogleFonts.abel(
          fontSize: 14, // Ukuran teks sekunder
          color: primaryTextColor,
        ),
        bodySmall: GoogleFonts.abel(
          fontSize: 12, // Ukuran untuk teks tambahan atau catatan
          color: secondaryTextColor,
        ),
        labelLarge: GoogleFonts.abel(
          fontSize:
              14, // Label besar, digunakan untuk tombol atau label penting
          color: secondaryTextColor,
        ),
        labelMedium: GoogleFonts.abel(
          fontSize: 12, // Label sedang untuk UI elemen
          color: secondaryTextColor,
        ),
        labelSmall: GoogleFonts.abel(
          fontSize: 11, // Label kecil, digunakan untuk indikator atau ikon
          color: secondaryTextColor,
        ),
      ),
    );
  }

  // Dark Theme Data (Opsional)
  static ThemeData get darkTheme {
    Color primaryTextColor = const Color(0xFFFFFFFF);
    Color secondaryTextColor = const Color(0xFF98A1BD);

    return ThemeData(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: const Color(0xFF02174C),
      primaryColor: const Color(0xFF8E97FD),
      primaryColorDark: const Color(0xFFE6E7F2),
      primaryColorLight: Colors.black,
      dividerTheme: DividerThemeData(color: secondaryTextColor),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Color(0xFF03174D), // Warna background untuk mode gelap
      ),
      textTheme: TextTheme(
        displayLarge: GoogleFonts.abel(
          fontSize: 57, // Display terbesar untuk teks utama atau header besar
          color: primaryTextColor,
          fontWeight: FontWeight.w300,
        ),
        displayMedium: GoogleFonts.abel(
          fontSize:
              45, // Display sedang, digunakan untuk header besar namun tidak dominan
          color: primaryTextColor,
          fontWeight: FontWeight.w300,
        ),
        displaySmall: GoogleFonts.abel(
          fontSize: 36, // Display kecil, untuk sub-header atau judul penting
          color: primaryTextColor,
          fontWeight: FontWeight.bold,
        ),
        headlineLarge: GoogleFonts.abel(
          fontSize: 32, // Ukuran untuk headline atau judul utama
          color: secondaryTextColor,
        ),
        headlineMedium: GoogleFonts.abel(
          fontSize: 28, // Ukuran headline menengah
          color: primaryTextColor,
        ),
        headlineSmall: GoogleFonts.abel(
          fontSize: 24, // Ukuran headline kecil
          color: primaryTextColor,
        ),
        titleLarge: GoogleFonts.abel(
          fontSize: 22, // Ukuran besar untuk judul utama di layar
          color: secondaryTextColor,
        ),
        titleMedium: GoogleFonts.abel(
          fontSize: 18, // Ukuran sedang untuk judul atau subtitle
          color: primaryTextColor,
          fontWeight: FontWeight.bold,
        ),
        titleSmall: GoogleFonts.abel(
          fontSize: 14, // Ukuran kecil untuk subtitle atau label
          color: secondaryTextColor,
          fontWeight: FontWeight.w300,
        ),
        bodyLarge: GoogleFonts.abel(
          fontSize: 16, // Ukuran teks utama
          color: primaryTextColor,
        ),
        bodyMedium: GoogleFonts.abel(
          fontSize: 14, // Ukuran teks sekunder
          color: primaryTextColor,
        ),
        bodySmall: GoogleFonts.abel(
          fontSize: 12, // Ukuran untuk teks tambahan atau catatan
          color: secondaryTextColor,
        ),
        labelLarge: GoogleFonts.abel(
          fontSize:
              14, // Label besar, digunakan untuk tombol atau label penting
          color: secondaryTextColor,
        ),
        labelMedium: GoogleFonts.abel(
          fontSize: 12, // Label sedang untuk UI elemen
          color: secondaryTextColor,
        ),
        labelSmall: GoogleFonts.abel(
          fontSize: 11, // Label kecil, digunakan untuk indikator atau ikon
          color: secondaryTextColor,
        ),
      ),
    );
  }
}
