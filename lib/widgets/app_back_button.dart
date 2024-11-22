import 'package:flutter/material.dart';

class AppBackButton extends StatelessWidget {
  final Function()? onTap;
  const AppBackButton({this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color(0xFFEBEAEC), // Color of the border
            width: 1, // Width of the border
          ),
          borderRadius: BorderRadius.circular(55), // Radius for rounded corners
        ),
        child: const Icon(
          Icons.arrow_back,
          // color: Color(0xFF3F414E),
        ),
      ),
    );
  }
}
