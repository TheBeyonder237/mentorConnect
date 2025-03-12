import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class CarouselPage extends StatefulWidget {
  final String image;
  final String description;
  const CarouselPage(
      {super.key, required this.image, required this.description});

  @override
  State<CarouselPage> createState() => _CarouselPageState();
}

class _CarouselPageState extends State<CarouselPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 5.0.w),
          height: (size.height / 1.8).h,
          width: size.width,
          child: Lottie.asset(
            widget.image,
          ),
        ),
        SizedBox(
          height: 24.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0.w),
          child: Text(
            widget.description,
            textAlign: TextAlign.center,
            style: GoogleFonts.nunito(
                fontSize: 22.0.sp,
                fontWeight: FontWeight.w600,
                color: Colors.black),
          ),
        ),
      ],
    );
  }
}
