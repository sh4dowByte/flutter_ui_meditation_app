// lib/config/app_theme.dart

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  // Light Theme Data
  static ThemeData get lightTheme {
    return ThemeData(
      brightness: Brightness.light,
      primaryColor: const Color(0xFF8E97FD),
      primaryColorDark: const Color(0xFF3F414E),
      primaryColorLight: Colors.white,
      textTheme: TextTheme(
        displayLarge: GoogleFonts.roboto(
          fontSize: 57,
          color: const Color(0xFF3F414E),
          fontWeight: FontWeight.w300,
        ),
        displayMedium: GoogleFonts.roboto(
          fontSize: 45,
          color: const Color(0xFF3F414E),
          fontWeight: FontWeight.w300,
        ),
        displaySmall: GoogleFonts.roboto(
          fontSize: 36,
          color: const Color(0xFF3F414E),
          fontWeight: FontWeight.w300,
        ),
        headlineLarge: GoogleFonts.roboto(
          fontSize: 32,
          color: const Color(0xFF3F414E),
        ),
        headlineMedium: GoogleFonts.roboto(
          fontSize: 28,
          color: const Color(0xFF3F414E),
        ),
        headlineSmall: GoogleFonts.roboto(
          fontSize: 24,
          color: const Color(0xFF3F414E),
        ),
        titleLarge: GoogleFonts.roboto(
          fontSize: 22,
          color: const Color(0xFF3F414E),
        ),
        titleMedium: GoogleFonts.roboto(
          fontSize: 18,
          color: const Color(0xFF3F414E),
          fontWeight: FontWeight.bold,
        ),
        titleSmall: GoogleFonts.roboto(
          fontSize: 14,
          color: const Color(0xFFA1A4B2),
        ),
        bodyLarge: GoogleFonts.roboto(
          fontSize: 16,
          color: const Color(0xFF3F414E),
        ),
        bodyMedium: GoogleFonts.roboto(
          fontSize: 14,
          color: const Color(0xFF3F414E),
        ),
        bodySmall: GoogleFonts.roboto(
          fontSize: 12,
          color: const Color(0xFF3F414E),
        ),
        labelLarge: GoogleFonts.roboto(
          fontSize: 14,
          color: const Color(0xFF3F414E),
        ),
        labelMedium: GoogleFonts.roboto(
          fontSize: 12,
          color: const Color(0xFF3F414E),
        ),
        labelSmall: GoogleFonts.roboto(
          fontSize: 11,
          color: const Color(0xFFA1A4B2),
        ),
      ),
    );
  }

  // Dark Theme Data (Opsional)
  static ThemeData get darkTheme {
    return ThemeData(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: const Color(0xFF02174C),
      primaryColor: const Color(0xFF8E97FD),
      primaryColorDark: const Color(0xFFE6E7F2),
      primaryColorLight: Colors.black,
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Color(0xFF03174D), // Warna background untuk mode gelap
        // selectedItemColor: Colors.tealAccent,
        // unselectedItemColor: Colors.grey,
      ),
      textTheme: TextTheme(
        displayLarge: GoogleFonts.roboto(
          fontSize: 57, // Display terbesar untuk teks utama atau header besar
          color: const Color(0xFFFFFFFF),
          fontWeight: FontWeight.w300,
        ),
        displayMedium: GoogleFonts.roboto(
          fontSize:
              45, // Display sedang, digunakan untuk header besar namun tidak dominan
          color: const Color(0xFFFFFFFF),
          fontWeight: FontWeight.w300,
        ),
        displaySmall: GoogleFonts.roboto(
          fontSize: 36, // Display kecil, untuk sub-header atau judul penting
          color: const Color(0xFFFFFFFF),
          fontWeight: FontWeight.w300,
        ),
        headlineLarge: GoogleFonts.roboto(
          fontSize: 32, // Ukuran untuk headline atau judul utama
          color: const Color(0xFFE6E7F2),
        ),
        headlineMedium: GoogleFonts.roboto(
          fontSize: 28, // Ukuran headline menengah
          color: const Color(0xFFE6E7F2),
        ),
        headlineSmall: GoogleFonts.roboto(
          fontSize: 24, // Ukuran headline kecil
          color: const Color(0xFFE6E7F2),
        ),
        titleLarge: GoogleFonts.roboto(
          fontSize: 22, // Ukuran besar untuk judul utama di layar
          color: const Color(0xFFE6E7F2),
        ),
        titleMedium: GoogleFonts.roboto(
          fontSize: 18, // Ukuran sedang untuk judul atau subtitle
          color: const Color(0xFFE6E7F2),
          fontWeight: FontWeight.bold,
        ),
        titleSmall: GoogleFonts.roboto(
          fontSize: 14, // Ukuran kecil untuk subtitle atau label
          color: const Color(0xFFB0BEC5),
          fontWeight: FontWeight.w300,
        ),
        bodyLarge: GoogleFonts.roboto(
          fontSize: 16, // Ukuran teks utama
          color: const Color(0xFFFFFFFF),
        ),
        bodyMedium: GoogleFonts.roboto(
          fontSize: 14, // Ukuran teks sekunder
          color: const Color(0xFFFFFFFF),
        ),
        bodySmall: GoogleFonts.roboto(
          fontSize: 12, // Ukuran untuk teks tambahan atau catatan
          color: const Color(0xFFB0BEC5),
        ),
        labelLarge: GoogleFonts.roboto(
          fontSize:
              14, // Label besar, digunakan untuk tombol atau label penting
          color: const Color(0xFFE6E7F2),
        ),
        labelMedium: GoogleFonts.roboto(
          fontSize: 12, // Label sedang untuk UI elemen
          color: const Color(0xFFE6E7F2),
        ),
        labelSmall: GoogleFonts.roboto(
          fontSize: 11, // Label kecil, digunakan untuk indikator atau ikon
          color: const Color(0xFF98A1BD),
        ),
      ),
    );
  }
}
