// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/components.dart';
import '../config/routes.dart';

class RemindersPage extends StatefulWidget {
  const RemindersPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _RemindersPageState createState() => _RemindersPageState();
}

class _RemindersPageState extends State<RemindersPage> {
  DateTime _selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 60,
                  ),
                  Text(
                    'What time would you like to meditate?',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Any time you can choose but We recommend first thing in th morning.',
                    style: GoogleFonts.roboto(
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                      color: Color(0xFFA1A4B2),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Container(
              margin: EdgeInsets.all(10),
              height: 212,
              decoration: BoxDecoration(
                color: Theme.of(context).brightness == Brightness.light
                    ? Color(0xFFF5F5F9)
                    : CupertinoColors.systemBackground.darkColor,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: CupertinoDatePicker(
                backgroundColor:
                    Theme.of(context).brightness == Brightness.light
                        ? Color(0xFFF5F5F9)
                        : CupertinoColors.systemBackground.darkColor,
                initialDateTime: _selectedDate,
                mode: CupertinoDatePickerMode.time,
                onDateTimeChanged: (DateTime newDate) {
                  setState(() {
                    _selectedDate = newDate;
                  });
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Which day would you like to meditate?',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Everyday is best, but we recommend picking at least five.',
                    style: GoogleFonts.roboto(
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                      color: Color(0xFFA1A4B2),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 100,
              child: AppDaySelector(),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  AppButton(
                    'SAVE',
                    onTap: () => Navigator.pushNamed(context, Routes.menu),
                  ),
                  const SizedBox(height: 10),
                  Center(
                    child: GestureDetector(
                      onTap: () => Navigator.pushNamed(context, Routes.menu),
                      child: Text(
                        'NO THANKS',
                        style: Theme.of(context).textTheme.titleSmall,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
