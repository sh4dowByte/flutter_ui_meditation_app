import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String text;
  final bool isReverse;
  final Color? color;
  final Widget? icon;
  final Function()? onTap;
  const AppButton(this.text,
      {this.onTap, this.color, this.icon, this.isReverse = false, super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color:
          Colors.transparent, // Material transparan agar efek ripple terlihat
      child: InkWell(
        onTap: onTap,
        borderRadius:
            BorderRadius.circular(38), // Radius border untuk efek ripple
        splashColor: Colors.white.withOpacity(0.3), // Warna efek ripple
        highlightColor: Colors.white.withOpacity(0.1), // Warna highlight
        child: Container(
          // alignment: Alignment.center,
          decoration: BoxDecoration(
            color:
                isReverse ? Colors.white : (color ?? const Color(0xFF8E97FD)),
            borderRadius: BorderRadius.circular(38),
            // border: Border.all(
            //   color: Colors.grey.shade100, // Warna border
            //   width: 1.0, // Ketebalan border
            // ),
          ),
          height: 63,
          width: double.infinity,
          child: Stack(
            alignment: Alignment.center,
            children: [
              if (icon != null)
                Positioned(
                  left: 34, // Jarak ikon dari tepi kiri
                  child: icon!,
                ),
              Text(
                text,
                style: TextStyle(
                  color: isReverse ? Colors.black : Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
