import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_sliding_tutorial/flutter_sliding_tutorial.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Page1 extends StatelessWidget {
  Page1(
    this.page,
    this.notifier, {
    super.key,
  });

  final int page;
  final ValueNotifier<double> notifier;
  var size, height, width;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;

    return SlidingPage(
      notifier: notifier,
      page: page,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Center(
            child: Column(
              children: [
                SizedBox(height: height * 77 / 800),
                SlidingContainer(
                    offset: 300,
                    child: SvgPicture.asset(
                      'images/page1.svg',
                      height: height * 250 / 800,
                      width: width * 274.68 / 360,
                    )),
                SizedBox(height: height * 53 / 800),
                SlidingContainer(
                  offset: 300,
                  child: Text(
                    'Topic 1',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: height * 26 / 800,
                      color: Color(0xFFFFFFFF),
                    )),
                  ),
                ),
                SizedBox(height: height * 30 / 800),
                Container(
                  height: 100,
                  width: 295,
                  child: Container(
                    height: height * 1 / 8,
                    width: width * 295 / 360,
                    child: SlidingContainer(
                      offset: 300,
                      child: Text(
                        'xyxyxyxyxyxyxyxyxyxyxyxyxyxyxyxyxyxyxyxyxyxyxyxyxyxyxyxyxyxyxxyxyxyxyxyxyxyxyxxyyxyxyxyxyxyxyxxyxyyxyxyxyxyxyxyxyxyxyxyxyxyxyxyxyxyxyxyxyxyxyxxyxyxyxyxyxyxyxyxyxyxyxyxyxxyxy',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: height * 16 / 800,
                          color: Color(0xFFFFFFFF),
                        )),
                      ),
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
