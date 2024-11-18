import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppSvg extends StatelessWidget {
  final String assets;
  final String currentCollor;
  final String replaceCollor;
  const AppSvg(
    this.assets, {
    this.currentCollor = '3F414E', // Nilai default untuk currentCollor
    this.replaceCollor = 'FFFFFF', // Nilai default untuk replaceCollor
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<String>(
      future: _loadAndModifySvg(), // Panggil fungsi Future
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          // Tampilkan loading indikator saat menunggu
          return const CircularProgressIndicator();
        } else if (snapshot.hasError) {
          // Tangani error jika terjadi
          return Text('Error loading SVG: ${snapshot.error}');
        } else if (snapshot.hasData) {
          // Tampilkan SVG yang sudah dimodifikasi
          return SvgPicture.string(
            snapshot.data!,
          );
        } else {
          return const Text('No SVG data available');
        }
      },
    );
  }

  Future<String> _loadAndModifySvg() async {
    // Baca file SVG sebagai string
    String rawSvg = await rootBundle.loadString(assets);

    // Ganti warna tertentu
    String modifiedSvg =
        rawSvg.replaceAll('#$currentCollor', '#$replaceCollor');

    return modifiedSvg;
  }
}
