import 'package:fardin_project/views/home/favorite_page.dart';
import 'package:fardin_project/views/starter/first_screen.dart';
import 'package:fardin_project/views/starter/second_screen.dart';
import 'package:fardin_project/views/auth/sign_in_screen.dart';
import 'package:fardin_project/views/auth/sign_up_screen.dart';
import 'package:flutter/material.dart';

import 'views/home/bottom_nav_bar_widget.dart';
import 'views/home/home_page.dart';
import 'views/home/recent_page.dart';
import 'views/home/setting_page.dart';
import 'views/provide_info_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const FirstScreen(),
      routes: {
        FirstScreen.routeName: (context) => const FirstScreen(),
        SecondScreen.routeName: (context) => const SecondScreen(),
        SignUpScreen.routeName: (context) => const SignUpScreen(),
        SignInScreen.routeName: (context) => const SignInScreen(),
        ProvideInfoScreen.routeName: (context) => const ProvideInfoScreen(),

        // * homepage routes
        BottomNavBarWidget.routeName: (context) => const BottomNavBarWidget(),
        HomePage.routeName: (context) => const HomePage(),
        FavoritePage.routeName: (context) => const FavoritePage(),
        RecentPage.routeName: (context) => const RecentPage(),
        SettingPage.routeName: (context) => const SettingPage(),
      },
    );
  }
}
