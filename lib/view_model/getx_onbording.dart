import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Onbording extends GetxController {
  Rx<PageController> controller = PageController().obs;
  RxInt pageCount = 0.obs;
}
