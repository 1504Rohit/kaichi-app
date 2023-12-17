import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kaichi_user/view/account/account_page.dart';
import 'package:kaichi_user/view/all%20salon/allsalon_page.dart';
import 'package:kaichi_user/view/booking/booking_page.dart';
import 'package:kaichi_user/view/homepage/home_page.dart';

class Navigation extends GetxController {
  RxInt pageNo = 0.obs;
  RxList<Widget> page = [
    const HomePage(),
    const AllSalonPage(),
    const BookingPage(),
    const AccountPage()
  ].obs;
}
