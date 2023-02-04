import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_sliding_tutorial/flutter_sliding_tutorial.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Page1 extends StatelessWidget {
  const Page1(
    this.page,
    this.notifier, {
    super.key,
  });

  final int page;
  final ValueNotifier<double> notifier;

  @override
  Widget build(BuildContext context) {
    return SlidingPage(
      notifier: notifier,
      page: page,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Center(
            child: Column(
              children: [
                SizedBox(height: 77),
                SlidingContainer(
                    offset: 300,
                    child: SvgPicture.asset(
                      'images/page1.svg',
                    )),
                SizedBox(height: 53),
                SlidingContainer(
                  offset: 300,
                  child: Text(
                    'Topic 1',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 26,
                      color: Color(0xFFFFFFFF),
                    )),
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  height: 100,
                  width: 295,
                  child: SlidingContainer(
                    offset: 300,
                    child: Text(
                      'xyxyxyxyxyxyxyxyxyxyxyxyxyxyxyxyxyxyxyxyxyxyxyxyxyxyxyxyxyxyxxyxyxyxyxyxyxyxyxxyyxyxyxyxyxyxyxxyxyyxyxyxyxyxyxyxyxyxyxyxyxyxyxyxyxyxyxyxyxyxyxxyxyxyxyxyxyxyxyxyxyxyxyxyxxyxy',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Color(0xFFFFFFFF),
                      )),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
