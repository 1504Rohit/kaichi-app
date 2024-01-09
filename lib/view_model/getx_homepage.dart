import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kaichi_user/style/app_colors/app_colors.dart';
import 'package:kaichi_user/utils/constants/constants.dart';

class HomeLogic extends GetxController {
  static double W = Mq.w;
  RxInt pageNo1 = 0.obs;
  RxList<Widget> pages1 = [
    Padding(
      padding: EdgeInsets.symmetric(horizontal: W * .060),
      child: Container(
        height: W * .430,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(W * .024),
            image: const DecorationImage(
                fit: BoxFit.cover, image: AssetImage('assets/slide1.png'))),
        child: Stack(children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(W * .024),
                image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/Frame 34316.png'))),
          ),
          Padding(
            padding: EdgeInsets.all(W * .040),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'The Beauty Hub',
                      style: GoogleFonts.poppins(
                          fontSize: W * .064,
                          fontWeight: FontWeight.w700,
                          color: AppColors.buttonColor),
                    ),
                    Text(
                      'Get Up To 40% OFF',
                      style: GoogleFonts.poppins(
                          fontSize: W * .032,
                          fontWeight: FontWeight.w500,
                          color: AppColors.White),
                    )
                  ],
                )
              ],
            ),
          ),
        ]),
      ),
    ),
    Padding(
      padding: EdgeInsets.symmetric(horizontal: W * .060),
      child: Container(
        height: W * .430,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(W * .024),
            image: const DecorationImage(
                fit: BoxFit.cover, image: AssetImage('assets/slide1.png'))),
        child: Stack(children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(W * .024),
                image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/Frame 34316.png'))),
          ),
          Padding(
            padding: EdgeInsets.all(W * .040),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'The Beauty Hub',
                      style: GoogleFonts.poppins(
                          fontSize: W * .064,
                          fontWeight: FontWeight.w700,
                          color: AppColors.buttonColor),
                    ),
                    Text(
                      'Get Up To 40% OFF',
                      style: GoogleFonts.poppins(
                          fontSize: W * .032,
                          fontWeight: FontWeight.w500,
                          color: AppColors.White),
                    )
                  ],
                )
              ],
            ),
          ),
        ]),
      ),
    ),
    Padding(
      padding: EdgeInsets.symmetric(horizontal: W * .060),
      child: Container(
        height: W * .430,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(W * .024),
            image: const DecorationImage(
                fit: BoxFit.cover, image: AssetImage('assets/slide1.png'))),
        child: Stack(children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(W * .024),
                image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/Frame 34316.png'))),
          ),
          Padding(
            padding: EdgeInsets.all(W * .040),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'The Beauty Hub',
                      style: GoogleFonts.poppins(
                          fontSize: W * .064,
                          fontWeight: FontWeight.w700,
                          color: AppColors.buttonColor),
                    ),
                    Text(
                      'Get Up To 40% OFF',
                      style: GoogleFonts.poppins(
                          fontSize: W * .032,
                          fontWeight: FontWeight.w500,
                          color: AppColors.White),
                    )
                  ],
                )
              ],
            ),
          ),
        ]),
      ),
    ),
  ].obs;

  RxList<Widget> petPage = [
    Padding(
      padding: EdgeInsets.symmetric(horizontal: W * .060),
      child: Container(
        height: W * .430,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: const DecorationImage(
                fit: BoxFit.cover, image: AssetImage('assets/slide2.png'))),
        child: Stack(children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/Frame 34316.png'))),
          ),
          Padding(
            padding: EdgeInsets.all(W * .040),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'The Beauty Hub',
                      style: GoogleFonts.poppins(
                          fontSize: W * .064,
                          fontWeight: FontWeight.w700,
                          color: AppColors.buttonColor),
                    ),
                    Text(
                      'Get Up To 40% OFF',
                      style: GoogleFonts.poppins(
                          fontSize: W * .032,
                          fontWeight: FontWeight.w500,
                          color: AppColors.White),
                    )
                  ],
                )
              ],
            ),
          ),
        ]),
      ),
    ),
    Padding(
      padding: EdgeInsets.symmetric(horizontal: W * .060),
      child: Container(
        height: W * .430,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: const DecorationImage(
                fit: BoxFit.cover, image: AssetImage('assets/slide2.png'))),
        child: Stack(children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/Frame 34316.png'))),
          ),
          Padding(
            padding: EdgeInsets.all(W * .040),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'The Beauty Hub',
                      style: GoogleFonts.poppins(
                          fontSize: W * .064,
                          fontWeight: FontWeight.w700,
                          color: AppColors.buttonColor),
                    ),
                    Text(
                      'Get Up To 40% OFF',
                      style: GoogleFonts.poppins(
                          fontSize: W * .032,
                          fontWeight: FontWeight.w500,
                          color: AppColors.White),
                    )
                  ],
                )
              ],
            ),
          ),
        ]),
      ),
    ),
    Padding(
      padding: EdgeInsets.symmetric(horizontal: W * .060),
      child: Container(
        height: W * .430,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: const DecorationImage(
                fit: BoxFit.cover, image: AssetImage('assets/slide2.png'))),
        child: Stack(children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/Frame 34316.png'))),
          ),
          Padding(
            padding: EdgeInsets.all(W * .040),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'The Beauty Hub',
                      style: GoogleFonts.poppins(
                          fontSize: W * .064,
                          fontWeight: FontWeight.w700,
                          color: AppColors.buttonColor),
                    ),
                    Text(
                      'Get Up To 40% OFF',
                      style: GoogleFonts.poppins(
                          fontSize: W * .032,
                          fontWeight: FontWeight.w500,
                          color: AppColors.White),
                    )
                  ],
                )
              ],
            ),
          ),
        ]),
      ),
    ),
  ].obs;

  RxInt petPageNo = 0.obs;

  RxInt number = 0.obs;
}
