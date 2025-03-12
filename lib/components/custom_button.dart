import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  final IconData? icon;
  final String label;
  final Color containerColor;
  final Color? color;
  final double? width;
  final bool loader;
  final double padding;
  final Function()? onTap;

  const CustomButton(
      {super.key,
      required this.label,
      this.icon,
      this.width,
      this.loader = false,
      this.padding = 0.0,
      this.containerColor = const Color(0xff18223D),
      this.color = Colors.white,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: containerColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            !loader
                ? Text(
                    label,
                    style: GoogleFonts.nunito(
                      fontWeight: FontWeight.w500,
                      fontSize: 18.0,
                      color: color,
                    ),
                  )
                : const CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation(Colors.white),
                  ),
          ],
        ),
      ),
    );
  }
}
