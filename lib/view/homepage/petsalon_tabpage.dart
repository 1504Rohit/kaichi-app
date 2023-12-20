import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kaichi_user/style/app_colors/app_colors.dart';
import 'package:kaichi_user/utils/Button/button.dart';
import 'package:kaichi_user/utils/constants/constants.dart';
import 'package:kaichi_user/utils/custom%20card/custom_card.dart';
import 'package:kaichi_user/utils/dot_indicator/dot_indicator.dart';

class PetSalonTab {
  static Widget petsalonTab() {
    double W = Mq.w;
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: W * .060),
            child: Container(
              height: W * .430,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/slide2.png'))),
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
                  padding: EdgeInsets.all(W * .030),
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
                                fontSize: W * .048,
                                fontWeight: FontWeight.w700,
                                color: AppColors.buttonColor),
                          ),
                          Text(
                            'Get Up To 40% OFF',
                            style: GoogleFonts.poppins(
                                fontSize: W * .028,
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
          SizedBox(
            height: W * .03,
          ),
          DotIndicator.dots(5, 3),
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
                    'assets/pet2.png'),
                SizedBox(width: W * .040),
                CustomCard.customCard('40% OFF ', 'on all\ntypes of Haircuts',
                    'By Floyd Barber Shop', 'assets/pet3.png')
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
