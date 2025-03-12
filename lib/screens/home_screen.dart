import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mentor_connect/screens/choice_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 24.0.h),
                  child: Text("Type de parrainage",
                      style: GoogleFonts.nunito(
                          fontSize: 28.0.sp, fontWeight: FontWeight.w800)),
                ),
                Text(
                    "Veuillez choisir le type de parrainage que vous voulez effectuer.",
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
                              builder: (buildContext) => const ChoiceScreen(
                                    class1: 'B1',
                                    class2: 'B2',
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
                            "B1 ---> B2",
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
                              builder: (buildContext) => const ChoiceScreen(
                                    class1: 'B2',
                                    class2: 'B3',
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
                            "B3 ---> B2",
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
                              builder: (buildContext) => const ChoiceScreen(
                                    class1: 'M1',
                                    class2: 'B3',
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
                            "M1 ---> B3",
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
                              builder: (buildContext) => const ChoiceScreen(
                                    class1: 'M2',
                                    class2: 'M1',
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
                            "M2 ---> M1",
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
