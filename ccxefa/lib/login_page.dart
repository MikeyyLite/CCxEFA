import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Color(0xFF212426),
            appBar: AppBar(
                elevation: 0,
                backgroundColor: Color(0xFF212426),
                actions: [
                  TextButton(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 24, 15, 0),
                        child: Text(
                          "NEED HELP?",
                          textAlign: TextAlign.right,
                          style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                                fontSize: 12,
                                color: Color(0xFFFFFFFF),
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ),
                    onPressed: () {},
                  ),
                ]),
            body: Center(
              child: Column(children: [
                SizedBox(
                  height: 140,
                ),
                Row(children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                        children: [SvgPicture.asset('images/Ellipse.svg')]
                        //Add Icon
                        ),
                  ),
                  SizedBox(
                    width: 18,
                  ),
                  Column(
                    children: [
                      Text("SMS",
                          style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                  fontSize: 40,
                                  color: Color(0xFFFFFFFF),
                                  fontWeight: FontWeight.w600)))
                    ],
                  ),
                ]),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Text("Stock",
                            style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                    fontSize: 40,
                                    color: Color(0xFFFFFFFF),
                                    fontWeight: FontWeight.w400))),
                      ),
                    ],
                    //Add Stock
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Text("market",
                            style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                    fontSize: 40,
                                    color: Color(0xFFFFFFFF),
                                    fontWeight: FontWeight.w400))),
                      ),
                    ],
                    //Add Stock
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Text("simulator",
                            style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                    fontSize: 40,
                                    color: Color(0xFF30CEDF),
                                    fontWeight: FontWeight.w700))),
                      ),
                    ],
                    //Add Stock
                  ),
                ),
                SizedBox(height: 76),
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    SvgPicture.asset(
                      "images/Rectangle.svg",
                    ),
                  ],
                  //Add rectangle
                ),
                SizedBox(
                  height: 86,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                          "By proceeding, I agree to the T&C and Privacy Policy",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xFFFFFFFF),
                                  fontWeight: FontWeight.w500))),
                    ),
                  ],
                ),
                SizedBox(
                  height: 7,
                ),
                GestureDetector(
                  onTap: () {},
                  child: SvgPicture.asset('images/Fixed.svg'),
                )
              ]),
            )));
    ;
    ;
  }
}
