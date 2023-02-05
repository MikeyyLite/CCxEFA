import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyWidget extends StatelessWidget {
  MyWidget({super.key});
  var size, height, width;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
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
                        padding: EdgeInsets.fromLTRB(
                            0, height * 24 / 800, height * 15 / 800, 0),
                        child: Text(
                          "NEED HELP?",
                          textAlign: TextAlign.right,
                          style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                                fontSize: height * 12 / 800,
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
                  height: height * 134 / 800,
                ),
                Row(children: [
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Column(
                        children: [SvgPicture.asset('images/Ellipse.svg')]
                        //Add Icon
                        ),
                  ),
                  SizedBox(
                    width: width * 18 / 360,
                  ),
                  Column(
                    children: [
                      Text("SMS",
                          style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                  fontSize: height * 40 / 800,
                                  color: Color(0xFFFFFFFF),
                                  fontWeight: FontWeight.w600)))
                    ],
                  ),
                ]),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, height * 50 / 800, 0, 0),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(width * 20 / 360, 0, 0, 0),
                        child: Text("Stock",
                            style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                    fontSize: height * 40 / 800,
                                    color: Color(0xFFFFFFFF),
                                    fontWeight: FontWeight.w400))),
                      ),
                    ],
                    //Add Stock
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, height * 10 / 800, 0, 0),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(width * 20 / 360, 0, 0, 0),
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
                  padding: EdgeInsets.fromLTRB(0, height * 10 / 800, 0, 0),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(width * 20 / 360, 0, 0, 0),
                        child: Text("simulator",
                            style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                    fontSize: height * 40 / 800,
                                    color: Color(0xFF30CEDF),
                                    fontWeight: FontWeight.w700))),
                      ),
                    ],
                    //Add Stock
                  ),
                ),
                SizedBox(height: height * 76 / 800),
                Row(
                  children: [
                    SizedBox(
                      width: width * 20 / 360,
                    ),
                    SvgPicture.asset(
                      "images/Rectangle.svg",
                    ),
                  ],
                  //Add rectangle
                ),
                SizedBox(
                  height: height * 86 / 800,
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
                                  fontSize: height * 12 / 800,
                                  color: Color(0xFFFFFFFF),
                                  fontWeight: FontWeight.w500))),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 7 / 800,
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
