import 'package:flutter/material.dart';
import 'package:kaichi_user/view/home_page.dart';
import 'package:kaichi_user/view/onbording.dart';
import 'package:kaichi_user/view/splashScreen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kaichi_user',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}
