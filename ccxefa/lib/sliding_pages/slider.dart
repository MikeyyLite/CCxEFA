import 'package:ccxefa/sliding_pages/page2.dart';
import 'package:ccxefa/sliding_pages/page3.dart';
import 'package:ccxefa/sliding_pages/page4.dart';

import 'page1.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_sliding_tutorial/flutter_sliding_tutorial.dart';

class SlidingTutorial extends StatefulWidget {
  const SlidingTutorial({
    required this.controller,
    required this.notifier,
    required this.pageCount,
    super.key,
  });

  final ValueNotifier<double> notifier;
  final int pageCount;
  final PageController controller;

  @override
  State<StatefulWidget> createState() => _SlidingTutorial();
}

class _SlidingTutorial extends State<SlidingTutorial> {
  late PageController _pageController;

  @override
  void initState() {
    _pageController = widget.controller;

    /// Listen to [PageView] position updates.
    _pageController.addListener(_onScroll);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBackgroundColor(
      pageController: _pageController,
      pageCount: widget.pageCount,

      /// You can use your own color list for page background
      //ignore: avoid_redundant_argument_values
      colors: [Color(0xFF212426)],
      child: Stack(
        children: [
          PageView(
            controller: _pageController,
            children: List<Widget>.generate(
              widget.pageCount,
              _getPageByIndex,
            ),
          ),
        ],
      ),
    );
  }

  /// Create different [SlidingPage] for indexes.
  Widget _getPageByIndex(int index) {
    switch (index % 4) {
      case 0:
        return Page1(index, widget.notifier);
      case 1:
        return Page2(index, widget.notifier);
      case 2:
        return Page3(index, widget.notifier);
      case 3:
        return Page4(index, widget.notifier);

      default:
        throw ArgumentError('Unknown position: $index');
    }
  }

  /// Notify [SlidingPage] about current page changes.
  void _onScroll() {
    widget.notifier.value = _pageController.page ?? 0;
  }
}
