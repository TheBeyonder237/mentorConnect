import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mentor_connect/screens/smash_screen.dart';
import 'package:mentor_connect/screens/students_list_screen.dart';

class ChoiceScreen extends StatefulWidget {
  final String class1;
  final String class2;
  const ChoiceScreen({super.key, required this.class1, required this.class2});

  @override
  State<ChoiceScreen> createState() => _ChoiceScreenState();
}

class _ChoiceScreenState extends State<ChoiceScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.0.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 24.0.h),
                  child: Text("Faire un choix",
                      style: GoogleFonts.nunito(
                          fontSize: 28.0.sp, fontWeight: FontWeight.w800)),
                ),
                Text("Qu'avez vous choisi ?",
                    style: GoogleFonts.nunito(
                        fontSize: 16.0.sp, color: Colors.grey)),
                SizedBox(
                  height: 24.0.h,
                ),
                Container(
                  width: size.width,
                  padding: EdgeInsets.fromLTRB(16.0.w, 0, 16.0.w, 16.0.h),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0.r),
                    border: Border.all(color: Colors.grey.shade400),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (buildContext) => StudentsListScreen(
                                    class1: widget.class1,
                                    class2: widget.class2,
                                  )));
                        },
                        child: Container(
                          padding: EdgeInsets.all(8.0.w),
                          margin: EdgeInsets.only(top: 16.0.h),
                          decoration: BoxDecoration(
                            color: const Color(0xff18223D),
                            borderRadius: BorderRadius.circular(8.0.r),
                            border: Border.all(color: Colors.grey.shade500),
                          ),
                          child: Text(
                            "Consulter la liste des smash",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.nunito(
                                fontSize: 20.0.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (buildContext) => SmashScreen(
                                    class1: widget.class1,
                                    class2: widget.class2,
                                  )));
                        },
                        child: Container(
                          padding: EdgeInsets.all(8.0.w),
                          margin: EdgeInsets.only(top: 16.0.h),
                          decoration: BoxDecoration(
                            color: const Color(0xff18223D),
                            borderRadius: BorderRadius.circular(8.0.r),
                            border: Border.all(color: Colors.grey.shade500),
                          ),
                          child: Text(
                            "Effectuer un smash",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.nunito(
                                fontSize: 20.0.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
