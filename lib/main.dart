import 'package:flutter/material.dart';

import 'package:grocery/view/screens/Authrization/login.dart';
import 'package:grocery/view/screens/Authrization/sign_up.dart';
import 'package:grocery/view/screens/Bottom_Nav_Bar/Home/home.dart';
import 'package:grocery/view/screens/Bottom_Nav_Bar/My_cart/my_cart.dart';
import 'package:grocery/view/screens/Bottom_Nav_Bar/bottom_bar.dart';
import 'package:grocery/view/screens/onBoarding/on_boarding.dart';
import 'package:grocery/view/screens/onBoarding/splash.dart';
// import 'package:grocery/view/screens/Authrization/login.dart';
// import 'package:grocery/view/screens/Authrization/sign_up.dart';
// import 'package:grocery/view/screens/Bottom_Nav_Bar/Account/account.dart';
// import 'package:grocery/view/screens/Bottom_Nav_Bar/Beverages/beverages.dart';
// import 'package:grocery/view/screens/Bottom_Nav_Bar/Explore/explore.dart';
// import 'package:grocery/view/screens/Bottom_Nav_Bar/Favourite/favourite.dart';
// import 'package:grocery/view/screens/Bottom_Nav_Bar/Home/home.dart';
// import 'package:grocery/view/screens/Bottom_Nav_Bar/Search/filters.dart';
// import 'package:grocery/view/screens/Bottom_Nav_Bar/Search/search.dart';
// import 'package:grocery/view/screens/Bottom_Nav_Bar/bottom_bar.dart';
// import 'package:grocery/view/screens/onBoarding/on_boarding.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          showUnselectedLabels: true,

        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const Splash(),
    );
  }
}
