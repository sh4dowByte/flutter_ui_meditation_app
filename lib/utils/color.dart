// Fungsi untuk menentukan Brightness dari warna
import 'dart:ui';

Brightness getBrightness(Color color) {
  // Menghitung kecerahan berdasarkan rumus untuk brightness
  double brightness =
      (color.red * 299 + color.green * 587 + color.blue * 114) / 1000;
  return brightness > 180 ? Brightness.light : Brightness.dark;
}
