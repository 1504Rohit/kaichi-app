import 'dart:async';

import 'package:flutter/material.dart';
import 'package:kaichi_user/style/app_colors/app_colors.dart';
import 'package:kaichi_user/style/assets_links/assets_link.dart';
import 'package:kaichi_user/view/onbording.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    Timer.periodic(Duration(seconds: 3), (timer) {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const OnbordingPage()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Center(
        child: Image.asset(Links.appLogo),
      ),
    );
  }
}
