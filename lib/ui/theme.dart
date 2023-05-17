import 'package:flutter/material.dart';
import 'package:hotw_test/const/const.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData darkThemeData(BuildContext context) {
  return ThemeData.dark().copyWith(
    primaryColor: kPrimaryColor,
    scaffoldBackgroundColor: kContentColorDark.withAlpha(
      kAlpha,
    ),
    appBarTheme: const AppBarTheme(
      centerTitle: false,
      elevation: 0,
      color: kContentColorDark,
    ),
    iconTheme: const IconThemeData(
      color: kContentColorLight,
    ),
    textTheme: GoogleFonts.interTextTheme(
      Theme.of(context).textTheme,
    ).apply(bodyColor: kContentColorLight),
    colorScheme: const ColorScheme.dark().copyWith(
      primary: kPrimaryColor,
      secondary: kSecondaryColor,
      error: kErrorColor,
    ),
    useMaterial3: true,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: kContentColorDark,
      selectedItemColor: Colors.green[400],
      unselectedItemColor: kContentColorLight,
      unselectedIconTheme: const IconThemeData(color: Colors.white),
      showUnselectedLabels: true,
    ),
    drawerTheme: const DrawerThemeData(
      backgroundColor: kContentColorDark,
    ),
    badgeTheme: BadgeThemeData(
      textColor: kContentColorLight.withAlpha(kAlpha),
      textStyle: GoogleFonts.teko(
        textStyle: Theme.of(context).textTheme.labelLarge,
        textBaseline: TextBaseline.alphabetic,
        color: Colors.white,
      ),
    ),
  );
}
