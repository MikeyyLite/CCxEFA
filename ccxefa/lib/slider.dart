import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter/gestures.dart';
import 'sliding_pages/slider.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'dart:io';

class AppScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}

class ExamplePage extends StatefulWidget {
  const ExamplePage({
    super.key,
  });

  @override
  _ExamplePageState createState() => _ExamplePageState();
}

class _ExamplePageState extends State<ExamplePage> {
  final ValueNotifier<double> notifier = ValueNotifier(0);
  final _pageCtrl = PageController();
  int pageCount = 4;
  var size, height, width;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;

    final pagebody = Center(
      child: Stack(children: <Widget>[
        SlidingTutorial(
          controller: _pageCtrl,
          pageCount: pageCount,
          notifier: notifier,
        ),
        Align(
            alignment: const Alignment(0, 0.5),
            child: SmoothPageIndicator(
                controller: _pageCtrl,
                // PageController
                count: 4,
                effect: ExpandingDotsEffect(
                    dotColor: Color(0xFF30CEDF),
                    activeDotColor: Color(0xFF30CEDF),
                    dotHeight: 10,
                    dotWidth: 10), // your preferred effect
                onDotClicked: (index) {})),
        Align(
            alignment: const Alignment(0, 0.9),
            child: GestureDetector(
              onTap: () {
                _pageCtrl.nextPage(
                  duration: const Duration(milliseconds: 200),
                  curve: Curves.linear,
                );
              },
              child: SvgPicture.asset('images/next_button.svg'),
            ))
      ]),
    );

    return Platform.isIOS
        ? CupertinoPageScaffold(child: pagebody)
        : Scaffold(body: pagebody);
  }
}
