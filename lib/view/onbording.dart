import 'package:flutter/material.dart';
import 'package:kaichi_user/utils/constants/constants.dart';

class OnbordingPage extends StatefulWidget {
  const OnbordingPage({super.key});

  @override
  State<OnbordingPage> createState() => _OnbordingPageState();
}

class _OnbordingPageState extends State<OnbordingPage> {
  @override
  Widget build(BuildContext context) {
    Mq.h = MediaQuery.of(context).size.height;
    Mq.w = MediaQuery.of(context).size.width;
    return Scaffold(
        body: PageView.builder(
      itemCount: 4,
      itemBuilder: (context, i) {
        return Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.black,
        );
      },
    ));
  }
}
