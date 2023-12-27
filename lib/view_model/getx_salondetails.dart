import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LogController extends GetxController {
  RxBool isFavourite = false.obs;
  RxBool isPageClosed = false.obs;
  RxInt page = 0.obs;
  RxDouble onSlide = 0.0.obs;
  Rx<PageController> controller = PageController().obs;
}
