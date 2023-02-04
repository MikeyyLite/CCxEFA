import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

//incomplete

class News extends StatefulWidget {
  const News({super.key});

  @override
  State<News> createState() => _NewsState();
}

class _NewsState extends State<News> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: const ListViewBuilder());
  }
}

class ListViewBuilder extends StatelessWidget {
  const ListViewBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF212426),
        appBar: AppBar(
            centerTitle: true,
            backgroundColor: Color(0xFF35363A),
            title: Text("News",
                style: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                      fontSize: 16,
                      color: Color(0xFFFFFFFF),
                      fontWeight: FontWeight.w600),
                ))),
        body: ListView.builder(
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: Column(
                children: <Widget>[
                  Row(children: <Widget>[
                    Container(
                      child: Column(children: [
                        SvgPicture.asset('images/Rectangle2.svg'),
                      ]),
                    ),
                    Container(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            TextButton(
                                onPressed: () {},
                                child: Text('Productivity',
                                    style:
                                        TextStyle(color: Color(0xFF6E798C)))),
                            SizedBox(width: 27)
                          ],
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              '7 Skills of Highly Effective Programmers',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF081F32)),
                            ))
                      ],
                    ))
                  ]),
                ],
              ),
            );
          },
        ));
  }
}
