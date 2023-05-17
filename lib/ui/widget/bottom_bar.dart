import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hotw_test/const/const.dart';
import 'package:hotw_test/model/navbar.dart';
import 'package:hotw_test/ui/widget/animation/scroll_animation.dart';
import 'package:hotw_test/ui/widget/badge.dart';

class BottomNavBar extends ConsumerWidget {
  const BottomNavBar({super.key});

  final isNotifVisible = false;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ScrollToHide(
      controller: ref.watch(scrollControlProvider.notifier).control,
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          //Home
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: sHome,
            activeIcon: Icon(Icons.home),
          ),
          //Shops
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.wrench),
            label: sShops,
            activeIcon: Icon(CupertinoIcons.wrench_fill),
          ),
          //Chats with Badge
          BottomNavigationBarItem(
            icon: NotifBadge(),
            label: sChats,
            activeIcon: Icon(Icons.chat),
          ),
          //Menu
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: sMenu,
            activeIcon: Icon(Icons.menu_outlined),
          )
        ],
        currentIndex: ref.watch(navBarNotifierProvider),
        onTap: (index) {
          ref.read(navBarNotifierProvider.notifier).updateIndex(index);
        },
      ),
    );
  }
}
