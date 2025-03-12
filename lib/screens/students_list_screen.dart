import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class StudentsListScreen extends StatefulWidget {
  final String class1;
  final String class2;
  const StudentsListScreen(
      {super.key, required this.class1, required this.class2});

  @override
  State<StudentsListScreen> createState() => _StudentsListScreenState();
}

class _StudentsListScreenState extends State<StudentsListScreen> {
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
                  child: Text("Liste des smash",
                      style: GoogleFonts.nunito(
                          fontSize: 28.0.sp, fontWeight: FontWeight.w800)),
                ),
                Text(
                    "Ici est affichée la liste des smash effectués entre les étudiants de ${widget.class1} et de ${widget.class2}.",
                    style: GoogleFonts.nunito(
                        fontSize: 16.0.sp, color: Colors.grey)),
                ListView.builder(
                    itemCount: 1,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (buildContext, index) {
                      return Container(
                        width: size.width,
                        margin: EdgeInsets.only(top: 24.0.h),
                        padding: EdgeInsets.fromLTRB(16.0.w, 0, 16.0.w, 16.0.h),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0.r),
                          border: Border.all(color: Colors.grey.shade400),
                        ),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Container(
                                padding: EdgeInsets.all(8.0.w),
                                margin: EdgeInsets.only(top: 16.0.h),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0.r),
                                  border:
                                      Border.all(color: Colors.grey.shade500),
                                ),
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex: 2,
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsets.only(bottom: 8.0.h),
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Expanded(
                                                  child: RichText(
                                                    text: TextSpan(children: [
                                                      TextSpan(
                                                        text: "Nom complet: ",
                                                        style:
                                                            GoogleFonts.nunito(
                                                                fontSize:
                                                                    16.0.sp,
                                                                color: Colors
                                                                    .grey),
                                                      ),
                                                      TextSpan(
                                                        text:
                                                            "Kamdem Flanklin Junior",
                                                        style:
                                                            GoogleFonts.nunito(
                                                                fontSize:
                                                                    16.0.sp,
                                                                color: Colors
                                                                    .black,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600),
                                                      ),
                                                    ]),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsets.only(bottom: 8.0.h),
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Niveau: ",
                                                  style: GoogleFonts.nunito(
                                                      fontSize: 16.0.sp,
                                                      color: Colors.grey),
                                                ),
                                                Text(
                                                  widget.class1,
                                                  style: GoogleFonts.nunito(
                                                      fontSize: 16.0.sp,
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsets.only(bottom: 8.0.h),
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Attribut: ",
                                                  style: GoogleFonts.nunito(
                                                      fontSize: 16.0.sp,
                                                      color: Colors.grey),
                                                ),
                                                Text(
                                                  "Following",
                                                  style: GoogleFonts.nunito(
                                                      fontSize: 16.0.sp,
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                        child: Icon(
                                      Icons.picture_in_picture,
                                      size: 70.w,
                                      color: Colors.orange,
                                    ))
                                  ],
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(8.0.w),
                                margin: EdgeInsets.only(top: 16.0.h),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0.r),
                                  border:
                                      Border.all(color: Colors.grey.shade500),
                                ),
                                child: Row(
                                  children: [
                                    Expanded(
                                        child: Icon(
                                      Icons.catching_pokemon,
                                      size: 70.w,
                                      color: Colors.blue,
                                    )),
                                    Expanded(
                                      flex: 2,
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsets.only(bottom: 8.0.h),
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Expanded(
                                                  child: RichText(
                                                    text: TextSpan(children: [
                                                      TextSpan(
                                                        text: "Nom complet: ",
                                                        style:
                                                            GoogleFonts.nunito(
                                                                fontSize:
                                                                    16.0.sp,
                                                                color: Colors
                                                                    .grey),
                                                      ),
                                                      TextSpan(
                                                        text:
                                                            "Tagne Jean Claude",
                                                        style:
                                                            GoogleFonts.nunito(
                                                                fontSize:
                                                                    16.0.sp,
                                                                color: Colors
                                                                    .black,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600),
                                                      ),
                                                    ]),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsets.only(bottom: 8.0.h),
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Niveau: ",
                                                  style: GoogleFonts.nunito(
                                                      fontSize: 16.0.sp,
                                                      color: Colors.grey),
                                                ),
                                                Text(
                                                  widget.class2,
                                                  style: GoogleFonts.nunito(
                                                      fontSize: 16.0.sp,
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsets.only(bottom: 8.0.h),
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Attribut: ",
                                                  style: GoogleFonts.nunito(
                                                      fontSize: 16.0.sp,
                                                      color: Colors.grey),
                                                ),
                                                Text(
                                                  "Followers",
                                                  style: GoogleFonts.nunito(
                                                      fontSize: 16.0.sp,
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ]),
                      );
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
