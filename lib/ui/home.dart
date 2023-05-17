import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hotw_test/model/navbar.dart';
import 'package:hotw_test/ui/screens/chat.dart';
import 'package:hotw_test/ui/screens/home.dart';
import 'package:hotw_test/ui/screens/profile.dart';
import 'package:hotw_test/ui/screens/shop.dart';
import 'package:hotw_test/ui/widget/app_bar.dart';
import 'package:hotw_test/ui/widget/bottom_bar.dart';
import 'package:hotw_test/ui/widget/drawer.dart';

class Home extends ConsumerWidget {
  Home({super.key, required this.title});

  final String title;
  final List pagess = [
    const HomeScreen(),
    const ShopScreen(),
    const ChatScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: const AppBarMenu(),
      drawer: const Drawerr(),
      body: pagess[ref.watch(navBarNotifierProvider)],
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
