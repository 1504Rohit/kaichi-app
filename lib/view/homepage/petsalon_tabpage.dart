import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kaichi_user/style/app_colors/app_colors.dart';
import 'package:kaichi_user/utils/Button/button.dart';
import 'package:kaichi_user/utils/constants/constants.dart';
import 'package:kaichi_user/utils/custom%20card/custom_card.dart';
import 'package:kaichi_user/utils/dot_indicator/dot_indicator.dart';
import 'package:kaichi_user/view_model/getx_homepage.dart';

class PetSalonTab {
  static Widget petsalonTab(BuildContext context) {
    double W = Mq.w;
    HomeLogic homeLogic = Get.put(HomeLogic());
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: W * .430,
            child: Swiper(
              onIndexChanged: (value) {
                homeLogic.petPageNo.value = value;
              },
              itemBuilder: (BuildContext context, int index) {
                return homeLogic.petPage[index];
              },
              itemCount: homeLogic.petPage.length,
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
                        fontSize: W * .044,
                        fontWeight: FontWeight.w700,
                        color: AppColors.background),
                  ),
                  Text(
                    'See all >',
                    style: GoogleFonts.poppins(
                        fontSize: W * .036,
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
              padding: EdgeInsets.only(left: W * .060, right: W * .060),
              scrollDirection: Axis.horizontal,
              children: [
                CustomCard.customCard(
                    '50% Discount ',
                    'on All\nkinds of Massage',
                    'By Port Sans Massage Center',
                    'assets/pet2.png'),
                SizedBox(width: W * .040),
                CustomCard.customCard('40% OFF ', 'on all\ntypes of Haircuts',
                    'By Floyd Barber Shop', 'assets/pet3.png'),
                SizedBox(width: W * .040),
                CustomCard.customCard(
                    '50% Discount ',
                    'on All\nkinds of Massage',
                    'By Port Sans Massage Center',
                    'assets/pet2.png'),
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
                        fontSize: W * .044,
                        fontWeight: FontWeight.w700,
                        color: AppColors.background),
                  ),
                  Text(
                    'See all >',
                    style: GoogleFonts.poppins(
                        fontSize: W * .036,
                        fontWeight: FontWeight.w500,
                        color: AppColors.buttonColor),
                  )
                ],
              ),
            ),
          ),
          Obx(
            () => SizedBox(
              height: W * .096,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(horizontal: W * .060),
                children: [
                  InkWell(
                      onTap: () {
                        homeLogic.number.value = 0;
                      },
                      child: StyleButton.button(
                          'Premium Salons',
                          homeLogic.number.value == 0
                              ? AppColors.buttonColor
                              : AppColors.White)),
                  SizedBox(
                    width: W * .040,
                  ),
                  InkWell(
                      onTap: () {
                        homeLogic.number.value = 1;
                      },
                      child: StyleButton.button(
                          'Medium Salons',
                          homeLogic.number.value == 1
                              ? AppColors.buttonColor
                              : AppColors.White)),
                  SizedBox(
                    width: W * .040,
                  ),
                  InkWell(
                      onTap: () {
                        homeLogic.number.value = 2;
                      },
                      child: StyleButton.button(
                          'Basic Salons',
                          homeLogic.number.value == 2
                              ? AppColors.buttonColor
                              : AppColors.White)),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: W * .060),
            child: ListView(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              children: [
                CustomCard.customCard1(
                    context,
                    'assets/running.png',
                    'Woodlands Hills Salon',
                    'Beuty salon - Near PalletMall, Woodland Hills',
                    '4.8 ( 1900 ratings )'),
                SizedBox(
                  height: W * .040,
                ),
                CustomCard.customCard1(
                    context,
                    'assets/salon.png',
                    'Woodlands Hills Salon',
                    'Beuty salon - Near PalletMall, Woodland Hills',
                    '4.8 ( 1900 ratings )'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
