// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/screens/cart_screen.dart';
import 'package:flutter_project/screens/item_screen.dart';
import 'package:flutter_project/screens/seller_profile_screen.dart';
import 'package:flutter_project/screens/student.dart';
import 'package:flutter_project/screens/user_first_screen.dart'; // For SignIn/SignUp
import 'package:flutter_project/screens/user_page.dart';
import 'package:flutter_project/widgets/cart_item_samples.dart';
import 'package:flutter_project/screens/welcome_screen.dart';
import 'package:flutter_project/theme/theme.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter_project/screens/shop_home_page.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "GradHub",
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: lightMode,
      // initialRoute: '/', // Start with the Welcome Screen
      // routes: {
      //   '/': (context) => ShopHomePage(),  // Welcome page with SignIn/SignUp
      //   '/signin': (context) => UserFirstScreen(username: null,),  // SignIn/SignUp screen
      //   '/student': (context) => StudentPage(),  // Student home screen
      //   '/shoptextColor,,xt) => ShopHomePage(),  // Shop Home with HomeAppBar
      //   '/cart': (context) => CartScreen(),  // Cart screen for shopping
      // },
      home: SellerProfileScreen(),
    );
  }
}
