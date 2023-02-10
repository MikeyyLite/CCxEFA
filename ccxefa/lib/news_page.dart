import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:io';

//incomplete

class News extends StatefulWidget {
  const News({super.key});

  @override
  State<News> createState() => _NewsState();
}

class _NewsState extends State<News> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: ListViewBuilder());
  }
}

class ListViewBuilder extends StatelessWidget {
  var size, height, width;
  ListViewBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    final pagebody = ListView.builder(
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.only(
            left: 10,
            top: 15,
            right: 10,
          ),
          child: Container(
            height: height * 1 / 8,
            width: width * 34 / 36,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
              child: Row(children: <Widget>[
                Container(
                  height: height * 1 / 8,
                  width: width * 10 / 36,
                  // child: Column(children: [
                  //   SvgPicture.asset(
                  //     'images/Rectangle2.svg',
                  //   ),
                  // ]),
                ),
                Container(
                    // color: Colors.red,
                    width: width * 223 / 360,
                    height: height * 1 / 8,
                    child: Container(
                      // color: Colors.blue,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // color: Colors.black,
                            height: height * 37 / 800,
                            width: width * 223 / 360,
                            // color: Colors.black,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextButton(
                                  onPressed: () {},
                                  child: Align(
                                      alignment: Alignment.topLeft,
                                      child: Container(
                                          // height: height * 1 / 80,
                                          // color: Colors.amber,
                                          child: Text('PRODUCTIVITY',
                                              style: TextStyle(
                                                  fontSize: height * 11 / 800,
                                                  color: Color(0xFF6E798C))))),
                                ),
                                // SizedBox(width: 27)
                              ],
                            ),
                          ),
                          Container(
                            // color: Colors.amber,
                            height: height * 63 / 800 - 8,
                            width: width * 223 / 360,
                            child: TextButton(
                                onPressed: () {},
                                child: Align(
                                    alignment: Alignment.topCenter,
                                    child: Text(
                                      '7 Skills of Highly Effective Programmers',
                                      style: TextStyle(
                                          fontSize: height * 14 / 800,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xFF081F32)),
                                    ))),
                          )
                        ],
                      ),
                    ))
              ]),
            ),
          ),
        );
      },
    );

    return Platform.isIOS
        ? CupertinoPageScaffold(
            child: pagebody,
            navigationBar: CupertinoNavigationBar(
                leading: IconButton(
                    color: Colors.white,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back_ios)),
                backgroundColor: Colors.black,
                middle: Text("News",
                    style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                          fontSize: 16,
                          color: Color(0xFFFFFFFF),
                          fontWeight: FontWeight.w600),
                    ))),
          )
        : Scaffold(
            backgroundColor: Colors.black,
            appBar: AppBar(
                leading: IconButton(
                  color: Colors.white,

                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back_ios),
                  //replace with our own icon data.
                ),
                centerTitle: true,
                backgroundColor: Colors.black,
                title: Text("News",
                    style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                          fontSize: 16,
                          color: const Color(0xFFFFFFFF),
                          fontWeight: FontWeight.w600),
                    ))),
            body: pagebody);
  }
}
