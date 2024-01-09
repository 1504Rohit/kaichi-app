import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kaichi_user/view/splashScreen/splash_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kaichi_user',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: const SplashScreen(),
    );
  }
}
