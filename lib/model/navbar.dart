import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'navbar.g.dart';

@Riverpod(keepAlive: true)
class NavBarNotifier extends _$NavBarNotifier {
  @override
  int build() => 0;

  updateIndex(int index) => state = index;
}

@Riverpod(keepAlive: true)
class ScrollControl extends _$ScrollControl {
  @override
  ScrollController build() => ScrollController();
  ScrollController control = ScrollController();
  setScrollControll() => control = state;
}
