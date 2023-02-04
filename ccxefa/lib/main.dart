import 'package:flutter/material.dart';
import 'package:flutter_sliding_tutorial/flutter_sliding_tutorial.dart';
import 'package:flutter/gestures.dart';
import 'sliding_pages/slider.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'login_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'news_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: AppScrollBehavior(),
      home: News(),
    );
  }
}

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(children: <Widget>[
          /// [StatefulWidget] with [PageView] and [AnimatedBackgroundColor].
          SlidingTutorial(
            controller: _pageCtrl,
            pageCount: pageCount,
            notifier: notifier,
          ),

          // /// Separator.
          // Align(
          //   alignment: const Alignment(0, 0.85),
          //   child: Container(
          //     width: double.infinity,
          //     height: 0.5,
          //     color: Colors.white,
          //   ),
          // ),
          // Align(
          //   alignment: Alignment.centerLeft,
          //   child: IconButton(
          //     icon: const Icon(
          //       Icons.arrow_back_ios_rounded,
          //       color: Colors.white,
          //     ),
          //     onPressed: () {
          //       _pageCtrl.previousPage(
          //         duration: const Duration(milliseconds: 600),
          //         curve: Curves.linear,
          //       );
          //     },
          //   ),
          // ),
          // Align(
          //   alignment: Alignment.centerRight,
          //   child: IconButton(
          //     icon: const Icon(
          //       Icons.arrow_back_ios_rounded,
          //       color: Colors.white,
          //       textDirection: TextDirection.rtl,
          //     ),
          //     onPressed: () {
          //       _pageCtrl.nextPage(
          //         duration: const Duration(milliseconds: 600),
          //         curve: Curves.linear,
          //       );
          //     },
          //   ),
          // ),

          /// [SlidingIndicator] for [PageView] in [SlidingTutorial].
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
      ),
    );
  }
}
