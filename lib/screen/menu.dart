import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'screen.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  int _currentIndex = 0;

  // Daftar halaman yang akan ditampilkan sesuai tab yang dipilih
  final List<Widget> _pages = [
    const Center(child: HomePage()),
    const Center(child: SleepPage()),
    const Center(child: MeditatePage()),
    const Center(child: MusicPage()),
    const Center(child: Text('Profile Page')),
  ];

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          _pages[_currentIndex], // Menampilkan halaman sesuai tab yang dipilih
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          splashColor: Colors.transparent, // Hilangkan efek ripple
          highlightColor: Colors.transparent, // Hilangkan efek highlight
          hoverColor: Colors.transparent, // Hilangkan efek hover
          focusColor: Colors.transparent, // Hilangkan efek focus
        ),
        child: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).bottomNavigationBarTheme.backgroundColor,
            boxShadow: [
              BoxShadow(
                color: const Color.fromARGB(255, 6, 1, 1).withOpacity(0.1),
                spreadRadius: 3,
                blurRadius: 10,
                // offset: Offset(10, -2), // Offset bayangan ke atas
              ),
            ],
          ),
          child: BottomNavigationBar(
            // elevation: 8.0,

            currentIndex: _currentIndex, // Index saat ini
            onTap: _onTabTapped, // Mengubah halaman saat tab ditekan
            type: BottomNavigationBarType.fixed,

            items: [
              _buildNavItem('home', 'Home', 0),
              _buildNavItem('sleep', 'Sleep', 1),
              _buildNavItem('meditate', 'Meditate', 2),
              _buildNavItem('music', 'Music', 3),
              _buildNavItem('user', 'Profile', 4),
            ],
            selectedItemColor:
                Theme.of(context).primaryColor, // Warna item yang dipilih
            unselectedItemColor: Colors.grey, // Warna item yang tidak dipilih
          ),
        ),
      ),
    );
  }

  BottomNavigationBarItem _buildNavItem(String icon, String label, int index) {
    return BottomNavigationBarItem(
      icon: Container(
          decoration: BoxDecoration(
            color: _currentIndex == index
                ? Theme.of(context)
                    .primaryColor // Latar belakang saat item dipilih
                : Colors.transparent,
            borderRadius: BorderRadius.circular(20),
          ),
          padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 14),
          margin: const EdgeInsets.only(bottom: 5),
          // ),
          child: SvgPicture.asset(
            "assets/images/icons/$icon.svg", // Path SVG kamu
            colorFilter: ColorFilter.mode(
              _currentIndex == index ? Colors.white : Colors.grey,
              BlendMode.srcIn,
            ),
            width: _currentIndex == index ? 30 : 24,
            height: _currentIndex == index ? 30 : 24,
          )),
      label: label,
    );
  }
}
