import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeLogic extends GetxController {
  RxInt pageNo1 = 0.obs;
  RxList<Widget> pages1 = [
    const Center(child: Text('page 1')),
    const Center(child: Text('page 2'))
  ].obs;
}
