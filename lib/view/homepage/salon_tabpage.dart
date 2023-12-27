import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kaichi_user/style/app_colors/app_colors.dart';
import 'package:kaichi_user/utils/Button/button.dart';
import 'package:kaichi_user/utils/constants/constants.dart';
import 'package:kaichi_user/utils/custom%20card/custom_card.dart';
import 'package:kaichi_user/utils/dot_indicator/dot_indicator.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:kaichi_user/view_model/getx_homepage.dart';

class SalonTab {
  static Widget salonTab() {
    double W = Mq.w;
    HomeLogic homeLogic = Get.put(HomeLogic());
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: W * .430,
            child: Swiper(
              onIndexChanged: (value) {
                homeLogic.pageNo1.value = value;
              },
              itemBuilder: (BuildContext context, int index) {
                return homeLogic.pages1[index];
              },
              itemCount: homeLogic.pages1.length,
              autoplay: true,
            ),
          ),
          SizedBox(
            height: W * .03,
          ),
          Obx(
            () => DotIndicator.dots(
                homeLogic.pages1.length, homeLogic.pageNo1.value),
          ),
          Padding(
            padding:
                EdgeInsets.symmetric(horizontal: W * .060, vertical: W * .040),
            child: SizedBox(
              height: W * .080,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Daily Deals',
                    style: GoogleFonts.poppins(
                        fontSize: W * .040,
                        fontWeight: FontWeight.w700,
                        color: AppColors.background),
                  ),
                  Text(
                    'See all >',
                    style: GoogleFonts.poppins(
                        fontSize: W * .032,
                        fontWeight: FontWeight.w500,
                        color: AppColors.buttonColor),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: W * .420,
            child: ListView(
              padding: EdgeInsets.only(left: W * .060),
              scrollDirection: Axis.horizontal,
              children: [
                CustomCard.customCard(
                    '50% Discount ',
                    'on All\nkinds of Massage',
                    'By Port Sans Massage Center',
                    'assets/Rectangle 532.png'),
                SizedBox(width: W * .040),
                CustomCard.customCard('40% OFF ', 'on all\ntypes of Haircuts',
                    'By Floyd Barber Shop', 'assets/Rectangle 532 (1).png')
              ],
            ),
          ),
          Padding(
            padding:
                EdgeInsets.symmetric(horizontal: W * .060, vertical: W * .040),
            child: SizedBox(
              height: W * .080,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Popular Near You',
                    style: GoogleFonts.poppins(
                        fontSize: W * .040,
                        fontWeight: FontWeight.w700,
                        color: AppColors.background),
                  ),
                  Text(
                    'See all >',
                    style: GoogleFonts.poppins(
                        fontSize: W * .032,
                        fontWeight: FontWeight.w500,
                        color: AppColors.buttonColor),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: W * .096,
            width: double.infinity,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: W * .060),
              children: [
                StyleButton.button('Premium Salons', AppColors.buttonColor),
                SizedBox(
                  width: W * .040,
                ),
                StyleButton.button('Medium Salons', AppColors.White),
                SizedBox(
                  width: W * .040,
                ),
                StyleButton.button('Basic Salons', AppColors.White),
              ],
            ),
          )
        ],
      ),
    );
  }
}
