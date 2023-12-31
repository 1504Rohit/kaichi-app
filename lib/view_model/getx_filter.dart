import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kaichi_user/style/app_colors/app_colors.dart';
import 'package:kaichi_user/utils/constants/constants.dart';

class FilterSheet extends GetxController {
  static double W = Mq.w;
  RxInt PageNo = 0.obs;
  RxList<Widget> pages = [
    Container(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: W * .040, vertical: W * .040),
        child: Align(
          alignment: Alignment.topCenter,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    height: W * .044,
                    width: W * .044,
                    child: Image.asset('assets/tick.png'),
                  ),
                  SizedBox(
                    width: W * .020,
                  ),
                  Text(
                    'Cost: Low to High',
                    style: GoogleFonts.poppins(
                        fontSize: W * .038,
                        fontWeight: FontWeight.w600,
                        color: AppColors.background),
                  ),
                ],
              ),
              SizedBox(
                height: W * .060,
              ),
              Row(
                children: [
                  Container(
                    height: W * .044,
                    width: W * .044,
                    child: Image.asset(
                      'assets/tick.png',
                      color: AppColors.buttonColor,
                    ),
                  ),
                  SizedBox(
                    width: W * .020,
                  ),
                  Text(
                    'Cost: High to Low',
                    style: GoogleFonts.poppins(
                        fontSize: W * .038,
                        fontWeight: FontWeight.w600,
                        color: AppColors.buttonColor),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    ),
    Container(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: W * .040, vertical: W * .040),
        child: Align(
          alignment: Alignment.topCenter,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    height: W * .044,
                    width: W * .044,
                    child: Image.asset('assets/tick.png'),
                  ),
                  SizedBox(
                    width: W * .020,
                  ),
                  Text(
                    'Review: Below 4 Star',
                    style: GoogleFonts.poppins(
                        fontSize: W * .038,
                        fontWeight: FontWeight.w600,
                        color: AppColors.background),
                  ),
                ],
              ),
              SizedBox(
                height: W * .060,
              ),
              Row(
                children: [
                  Container(
                    height: W * .044,
                    width: W * .044,
                    child: Image.asset(
                      'assets/tick.png',
                      color: AppColors.buttonColor,
                    ),
                  ),
                  SizedBox(
                    width: W * .020,
                  ),
                  Text(
                    'Review: Above 4 Star',
                    style: GoogleFonts.poppins(
                        fontSize: W * .038,
                        fontWeight: FontWeight.w600,
                        color: AppColors.buttonColor),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    ),
    Container(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: W * .040, vertical: W * .040),
        child: Align(
          alignment: Alignment.topCenter,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    height: W * .044,
                    width: W * .044,
                    child: Image.asset('assets/tick.png'),
                  ),
                  SizedBox(
                    width: W * .020,
                  ),
                  Text(
                    'Gender: Male',
                    style: GoogleFonts.poppins(
                        fontSize: W * .038,
                        fontWeight: FontWeight.w600,
                        color: AppColors.background),
                  ),
                ],
              ),
              SizedBox(
                height: W * .060,
              ),
              Row(
                children: [
                  Container(
                    height: W * .044,
                    width: W * .044,
                    child: Image.asset(
                      'assets/tick.png',
                      color: AppColors.buttonColor,
                    ),
                  ),
                  SizedBox(
                    width: W * .020,
                  ),
                  Text(
                    'Gender: Female',
                    style: GoogleFonts.poppins(
                        fontSize: W * .038,
                        fontWeight: FontWeight.w600,
                        color: AppColors.buttonColor),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    ),
    Container(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: W * .040, vertical: W * .040),
        child: Align(
          alignment: Alignment.topCenter,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    height: W * .044,
                    width: W * .044,
                    child: Image.asset('assets/tick.png'),
                  ),
                  SizedBox(
                    width: W * .020,
                  ),
                  Text(
                    'Distance: Inside 5 Km',
                    style: GoogleFonts.poppins(
                        fontSize: W * .038,
                        fontWeight: FontWeight.w600,
                        color: AppColors.background),
                  ),
                ],
              ),
              SizedBox(
                height: W * .060,
              ),
              Row(
                children: [
                  Container(
                    height: W * .044,
                    width: W * .044,
                    child: Image.asset(
                      'assets/tick.png',
                      color: AppColors.buttonColor,
                    ),
                  ),
                  SizedBox(
                    width: W * .020,
                  ),
                  Container(
                    child: Text(
                      'Distance: Outside 5 Kms',
                      style: GoogleFonts.poppins(
                          fontSize: W * .038,
                          fontWeight: FontWeight.w600,
                          color: AppColors.buttonColor),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    ),
  ].obs;
}
