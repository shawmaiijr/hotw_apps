import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ScrollToHide extends ConsumerStatefulWidget {
  final ScrollController controller;
  final Widget child;
  final Duration duration;

  const ScrollToHide({
    Key? key,
    required this.controller,
    required this.child,
    this.duration = kThemeChangeDuration,
  }) : super(key: key);

  @override
  ScrollToHideState createState() => ScrollToHideState();
}

class ScrollToHideState extends ConsumerState<ScrollToHide> {
  bool isVisible = true;
  @override
  void initState() {
    super.initState();

    widget.controller.addListener(listen);
  }

  @override
  void dispose() {
    widget.controller.removeListener(listen);
    super.dispose();
  }

  void listen() {
    final direction = widget.controller.position.userScrollDirection;
    if (direction == ScrollDirection.forward) {
      forward();
    }
    if (direction == ScrollDirection.reverse) {
      reverse();
    }
  }

  void forward() {
    if (!isVisible) setState(() => isVisible = true);
  }

  void reverse() {
    if (isVisible) setState(() => isVisible = false);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: widget.duration,
      height: isVisible ? kBottomNavigationBarHeight : 1,
      child: widget.child,
    );
  }
}
