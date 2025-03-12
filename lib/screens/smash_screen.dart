import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mentor_connect/components/custom_button.dart';

class SmashScreen extends StatefulWidget {
  final String class1;
  final String class2;
  const SmashScreen({super.key, required this.class1, required this.class2});

  @override
  State<SmashScreen> createState() => _SmashScreenState();
}

class _SmashScreenSta extends State<SmashScreen> {
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
                  child: Text("Smasher",
                      style: GoogleFonts.nunito(
                          fontSize: 28.0.sp, fontWeight: FontWeight.w800)),
                ),
                Text(
                    "Smasher les deux niveaux pour avoir les différents binômes following-follower.",
                    style: GoogleFonts.nunito(
                        fontSize: 16.0.sp, color: Colors.grey)),
                SizedBox(
                  height: 24.0.h,
                ),
                Text("Followings (${widget.class1})",
                    style: GoogleFonts.nunito(
                        fontSize: 20.0.sp, fontWeight: FontWeight.w800)),
                SizedBox(
                  height: 8.0.h,
                ),
                Container(
                  width: size.width,
                  padding: EdgeInsets.fromLTRB(10.0.w, 0, 10.0.w, 10.0.h),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0.r),
                    border: Border.all(color: Colors.grey.shade500),
                  ),
                  child: ListView.builder(
                      itemCount: 10,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (buildContext, index) {
                        return Padding(
                          padding: EdgeInsets.only(top: 10.0.h),
                          child: Text(
                            "- Kamdem Flanklin Junior",
                            textAlign: TextAlign.start,
                            style: GoogleFonts.nunito(
                                fontSize: 16.0.sp, fontWeight: FontWeight.bold),
                          ),
                        );
                      }),
                ),
                SizedBox(
                  height: 24.0.h,
                ),
                Text("Followers (${widget.class2})",
                    style: GoogleFonts.nunito(
                        fontSize: 20.0.sp, fontWeight: FontWeight.w800)),
                SizedBox(
                  height: 8.0.h,
                ),
                Container(
                  width: size.width,
                  padding: EdgeInsets.fromLTRB(10.0.w, 0, 10.0.w, 10.0.h),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0.r),
                    border: Border.all(color: Colors.grey.shade500),
                  ),
                  child: ListView.builder(
                      itemCount: 10,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (buildContext, index) {
                        return Padding(
                          padding: EdgeInsets.only(top: 10.0.h),
                          child: Text(
                            "- Tagne Clement Alias leBeau",
                            textAlign: TextAlign.start,
                            style: GoogleFonts.nunito(
                                fontSize: 16.0.sp, fontWeight: FontWeight.bold),
                          ),
                        );
                      }),
                ),
                SizedBox(
                  height: 24.0.h,
                ),
                CustomButton(
                  label: 'Smasher',
                  onTap: () {
                    // Navigator.of(context).pushReplacement(MaterialPageRoute(
                    //     builder: (buildContext) => const HomeScreen()));
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
