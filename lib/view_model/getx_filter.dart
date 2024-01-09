import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kaichi_user/style/app_colors/app_colors.dart';
import 'package:kaichi_user/utils/constants/constants.dart';

class FilterSheet extends GetxController {
  static double W = Mq.w;
  RxInt PageNo = 0.obs;
  static RxInt num = 0.obs;
  static RxInt num1 = 0.obs;
  static RxInt num2 = 0.obs;
  static RxInt num3 = 0.obs;
  RxList<Widget> pages = [
    Obx(
      () => Container(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: W * .040, vertical: W * .040),
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
                      child: Image.asset(
                        'assets/tick.png',
                        color: num.value == 0
                            ? AppColors.buttonColor
                            : AppColors.background,
                      ),
                    ),
                    SizedBox(
                      width: W * .020,
                    ),
                    InkWell(
                      onTap: () {
                        num.value = 0;
                      },
                      child: Text(
                        'Cost: Low to High',
                        style: GoogleFonts.poppins(
                            fontSize: W * .038,
                            fontWeight: FontWeight.w600,
                            color: num.value == 0
                                ? AppColors.buttonColor
                                : AppColors.background),
                      ),
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
                        color: num.value == 1
                            ? AppColors.buttonColor
                            : AppColors.background,
                      ),
                    ),
                    SizedBox(
                      width: W * .020,
                    ),
                    InkWell(
                      onTap: () {
                        num.value = 1;
                      },
                      child: Text(
                        'Cost: High to Low',
                        style: GoogleFonts.poppins(
                            fontSize: W * .038,
                            fontWeight: FontWeight.w600,
                            color: num.value == 1
                                ? AppColors.buttonColor
                                : AppColors.background),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    ),
    Obx(
      () => Container(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: W * .040, vertical: W * .040),
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
                      child: Image.asset(
                        'assets/tick.png',
                        color: num1.value == 0
                            ? AppColors.buttonColor
                            : AppColors.background,
                      ),
                    ),
                    SizedBox(
                      width: W * .020,
                    ),
                    InkWell(
                      onTap: () {
                        num1.value = 0;
                      },
                      child: Text(
                        'Review: Below 4 Star',
                        style: GoogleFonts.poppins(
                            fontSize: W * .038,
                            fontWeight: FontWeight.w600,
                            color: num1.value == 0
                                ? AppColors.buttonColor
                                : AppColors.background),
                      ),
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
                        color: num1.value == 1
                            ? AppColors.buttonColor
                            : AppColors.background,
                      ),
                    ),
                    SizedBox(
                      width: W * .020,
                    ),
                    InkWell(
                      onTap: () {
                        num1.value = 1;
                      },
                      child: Text(
                        'Review: Above 4 Star',
                        style: GoogleFonts.poppins(
                            fontSize: W * .038,
                            fontWeight: FontWeight.w600,
                            color: num1.value == 1
                                ? AppColors.buttonColor
                                : AppColors.background),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    ),
    Obx(
      () => Container(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: W * .040, vertical: W * .040),
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
                      child: Image.asset(
                        'assets/tick.png',
                        color: num2.value == 0
                            ? AppColors.buttonColor
                            : AppColors.background,
                      ),
                    ),
                    SizedBox(
                      width: W * .020,
                    ),
                    InkWell(
                      onTap: () {
                        num2.value = 0;
                      },
                      child: Text(
                        'Gender: Male',
                        style: GoogleFonts.poppins(
                            fontSize: W * .038,
                            fontWeight: FontWeight.w600,
                            color: num2.value == 0
                                ? AppColors.buttonColor
                                : AppColors.background),
                      ),
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
                        color: num2.value == 1
                            ? AppColors.buttonColor
                            : AppColors.background,
                      ),
                    ),
                    SizedBox(
                      width: W * .020,
                    ),
                    InkWell(
                      onTap: () {
                        num2.value = 1;
                      },
                      child: Text(
                        'Gender: Female',
                        style: GoogleFonts.poppins(
                            fontSize: W * .038,
                            fontWeight: FontWeight.w600,
                            color: num2.value == 1
                                ? AppColors.buttonColor
                                : AppColors.background),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    ),
    Obx(
      () => Container(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: W * .040, vertical: W * .040),
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
                      child: Image.asset(
                        'assets/tick.png',
                        color: num3.value == 0
                            ? AppColors.buttonColor
                            : AppColors.background,
                      ),
                    ),
                    SizedBox(
                      width: W * .020,
                    ),
                    InkWell(
                      onTap: () {
                        num3.value = 0;
                      },
                      child: Container(
                        child: Text(
                          'Distance: Inside 5 Km',
                          style: GoogleFonts.poppins(
                              fontSize: W * .038,
                              fontWeight: FontWeight.w600,
                              color: num3.value == 0
                                  ? AppColors.buttonColor
                                  : AppColors.background),
                        ),
                      ),
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
                        color: num3.value == 1
                            ? AppColors.buttonColor
                            : AppColors.background,
                      ),
                    ),
                    SizedBox(
                      width: W * .020,
                    ),
                    InkWell(
                      onTap: () {
                        num3.value = 1;
                      },
                      child: Container(
                        child: Text(
                          'Distance: Outside 5 Kms',
                          style: GoogleFonts.poppins(
                              fontSize: W * .038,
                              fontWeight: FontWeight.w600,
                              color: num3.value == 1
                                  ? AppColors.buttonColor
                                  : AppColors.background),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    )
  ].obs;
}
