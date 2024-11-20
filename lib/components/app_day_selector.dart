import 'package:flutter/material.dart';

class AppDaySelector extends StatefulWidget {
  const AppDaySelector({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _AppDaySelectorState createState() => _AppDaySelectorState();
}

class _AppDaySelectorState extends State<AppDaySelector> {
  // Menyimpan status apakah hari tertentu dipilih atau tidak
  final List<String> days = ["SU", "M", "T", "W", "TH", "F", "S"];
  final List<bool> selectedDays = [true, true, true, true, false, false, true];

  void toggleDaySelection(int index) {
    setState(() {
      selectedDays[index] = !selectedDays[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // spacing: 8.0,
        // runSpacing: 8.0,
        children: List.generate(days.length, (index) {
          return GestureDetector(
            onTap: () => toggleDaySelection(index),
            child: Container(
              width: 45,
              height: 45,
              padding:
                  const EdgeInsets.symmetric(vertical: 13.0, horizontal: 13.0),
              decoration: BoxDecoration(
                color: selectedDays[index]
                    ? const Color(0xFF3F414E)
                    : Colors.white,
                borderRadius: BorderRadius.circular(40),
                border: Border.all(
                  color: selectedDays[index]
                      ? const Color(0xFFA1A4B2)
                      : Colors.grey,
                  width: 1,
                ),
              ),
              child: Text(
                days[index],
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 11,
                  color: selectedDays[index] ? Colors.white : Colors.black,
                  // fontWeight: FontWeight.bold,
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
