import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kaichi_user/view/account/account_page.dart';
import 'package:kaichi_user/view/all%20salon/allsalon_page.dart';
import 'package:kaichi_user/view/booking/booking_page.dart';
import 'package:kaichi_user/view/homepage/home_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Navigation extends GetxController {
  RxInt pageNo = 0.obs;
  RxList<Widget> page = [
    const HomePage(),
    const AllSalonPage(),
    const BookingPage(),
    const AccountPage()
  ].obs;
  RxString? createdOn = ''.obs;
  RxString? activeStatus = ''.obs;
  RxString? _id = ''.obs;
  RxString? email = ''.obs;
  RxString? name = ''.obs;
  RxString? phone = ''.obs;
  RxString? imagePath = ''.obs;

  getLocalData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    createdOn!.value = prefs.getString('createdOn') ?? '';
    activeStatus!.value = prefs.getString('activeStatus') ?? '';
    _id!.value = prefs.getString('_id') ?? '';
    email!.value = prefs.getString('email') ?? '';
    name!.value = prefs.getString('name') ?? '';
    phone!.value = prefs.getString('phone') ?? '';
    imagePath!.value = prefs.getString('imagePath') ?? '';

    print(email);
  }
}
