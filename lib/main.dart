import 'package:flutter/material.dart';
import 'package:floating_draggable_widget/floating_draggable_widget.dart';

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
                dx: MediaQuery.of(context).size.width - 60,
                dy: 70,
                floatingWidget: GestureDetector(
                  onTap: () {
                    setState(() {
                      themeMode = themeMode == ThemeMode.dark
                          ? ThemeMode.light
                          : ThemeMode.dark;
                    });
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

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Back'),
        ),
      ),
    );
  }
}
