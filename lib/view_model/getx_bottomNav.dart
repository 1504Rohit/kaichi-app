import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kaichi_user/view/homepage/home_page.dart';

class Navigation extends GetxController {
  RxInt pageNo = 0.obs;
  RxList<Widget> page = [
    const HomePage(),
    const Center(
      child: Text('Page 1'),
    ),
    const Center(
      child: Text('Page 2'),
    ),
    const Center(
      child: Text('Page 3'),
    )
  ].obs;
}
