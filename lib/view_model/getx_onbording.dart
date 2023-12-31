import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kaichi_user/model/onbording_model.dart';

class Onbording extends GetxController {
  Rx<PageController> controller = PageController().obs;
  RxInt pageCount = 0.obs;

  List<Onboardings> content = [
    Onboardings('assets/onboarding1.png',
        'Schedule your Appointment with the best Hair Stylist in your Town.'),
    Onboardings('assets/onboarding2.png',
        'Schedule the Appointment in the best Salon for your Kids.'),
    Onboardings('assets/onboarding3.png',
        'Book yourself a massage therapist to release all your stress.'),
    Onboardings('assets/onboarding4.png',
        'Search for the best parlour near you to fulfil all your beauty needs')
  ].obs;
}
