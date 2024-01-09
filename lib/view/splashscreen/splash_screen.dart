import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kaichi_user/style/app_colors/app_colors.dart';
import 'package:kaichi_user/style/assets_links/assets_link.dart';
import 'package:kaichi_user/utils/constants/constants.dart';
import 'package:kaichi_user/view/bottom_navigation.dart';
import 'package:kaichi_user/view/onbording.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 3), () => getUserLoginOrNot());
  }

  getUserLoginOrNot() async {
    // Obtain shared preferences.
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    if (prefs.getString('activeStatus') == '1') {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const BottomNavigation()));
    } else {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const OnbordingPage()));
    }
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        systemNavigationBarColor: AppColors.background,
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light));
    Mq.h = MediaQuery.of(context).size.height;
    Mq.w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Center(
        child: Image.asset(Links.appLogo),
      ),
    );
  }
}
