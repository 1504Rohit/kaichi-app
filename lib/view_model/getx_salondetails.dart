import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LogController extends GetxController {
  RxBool isPageClosed = false.obs;
  RxInt page = 0.obs;
  Rx<PageController> controller = PageController().obs;
}
