import 'package:flutter/material.dart';
import 'package:floating_draggable_widget/floating_draggable_widget.dart';
import 'package:flutter/services.dart';

import 'config/routes.dart';
import 'screen/screen.dart';
import 'config/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeMode themeMode = ThemeMode.light;

  void _updateStatusBar() {
    // Atur gaya status bar berdasarkan mode tema
    final isDark = themeMode == ThemeMode.dark;
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent, // Transparan
        statusBarIconBrightness:
            isDark ? Brightness.light : Brightness.dark, // Ikon
        systemNavigationBarColor:
            isDark ? Colors.black : Colors.white, // Warna navigasi
        systemNavigationBarIconBrightness:
            isDark ? Brightness.light : Brightness.dark, // Ikon navigasi
        statusBarBrightness:
            isDark ? Brightness.dark : Brightness.light, // Untuk perangkat iOS
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Meditation App UI',
        debugShowCheckedModeBanner: false,
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        themeMode: themeMode,
        builder: (context, child) {
          return Stack(
            children: [
              // Navigator widget
              FloatingDraggableWidget(
                autoAlign: true,
                dx: 1,
                dy: 70,
                floatingWidget: GestureDetector(
                  onTap: () {
                    setState(() {
                      themeMode = themeMode == ThemeMode.dark
                          ? ThemeMode.light
                          : ThemeMode.dark;
                    });
                    _updateStatusBar();
                  },
                  child: Image.asset(
                    themeMode == ThemeMode.dark
                        ? 'assets/images/theme/moon.png'
                        : 'assets/images/theme/sun.png',
                    fit: BoxFit.cover,
                  ),
                ),
                floatingWidgetWidth: 60,
                floatingWidgetHeight: 60,
                mainScreenWidget: child!,
              ),
            ],
          );
        },
        home: const SignUpAndSigninPage(),
        onGenerateRoute: Routes.generateRoute);
  }
}
