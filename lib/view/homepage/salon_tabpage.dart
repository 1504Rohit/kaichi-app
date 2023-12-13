import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kaichi_user/style/app_colors/app_colors.dart';

class SalonTab {
  static Widget salonTab() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Container(
              height: 176,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/frame1.png'))),
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
                  padding: const EdgeInsets.all(15.0),
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
                                fontSize: 24,
                                fontWeight: FontWeight.w700,
                                color: AppColors.buttonColor),
                          ),
                          Text(
                            'Get Up To 40% OFF',
                            style: GoogleFonts.poppins(
                                fontSize: 12,
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
          const SizedBox(
            height: 5,
          ),
          dots(5, 3),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: SizedBox(
              height: 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Daily Deals',
                    style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: AppColors.background),
                  ),
                  Text(
                    'See all >',
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: AppColors.buttonColor),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 170,
            child: ListView(
              padding: const EdgeInsets.only(left: 30),
              scrollDirection: Axis.horizontal,
              children: [
                customCard('50% Discount ', 'on All\nkinds of Massage',
                    'By Port Sans Massage Center', 'assets/Rectangle 532.png'),
                const SizedBox(
                  width: 20,
                ),
                customCard('40% OFF ', 'on all\ntypes of Haircuts',
                    'By Floyd Barber Shop', 'assets/Rectangle 532 (1).png')
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: Container(
              height: 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Popular Near You',
                    style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: AppColors.background),
                  ),
                  Text(
                    'See all >',
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: AppColors.buttonColor),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 48,
            width: double.infinity,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 30),
              children: [
                button('Premium Salons', AppColors.buttonColor),
                const SizedBox(
                  width: 20,
                ),
                button('Medium Salons', AppColors.White),
                const SizedBox(
                  width: 20,
                ),
                button('Basic Salons', AppColors.White),
              ],
            ),
          )
        ],
      ),
    );
  }

  static Widget dots(int n, int l) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (int i = 0; i < n; i++)
          Container(
            margin: const EdgeInsets.only(left: 8),
            height: i == l ? 11 : 7,
            width: i == l ? 11 : 7,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: i == l
                  ? AppColors.background
                  : Color.fromRGBO(178, 184, 190, 1),
            ),
          )
      ],
    );
  }

  static Widget customCard(
      String offer, String title, String Subtitle, String image) {
    return Container(
      width: 200,
      decoration: BoxDecoration(
          color: AppColors.White, borderRadius: BorderRadius.circular(12)),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 80,
                width: 230,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover, image: AssetImage(image)),
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(12),
                        topRight: Radius.circular(12))),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image.asset('assets/Group 34359.png'),
                ),
              )
            ],
          ),
          Container(
            height: 78,
            decoration: BoxDecoration(
                color: AppColors.White,
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(12),
                    bottomRight: Radius.circular(12))),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: offer,
                            style: GoogleFonts.poppins(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: AppColors.buttonColor)),
                        TextSpan(
                            text: title,
                            style: GoogleFonts.poppins(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Colors.black)),
                      ]),
                    ),
                    Text(
                      Subtitle,
                      style: GoogleFonts.poppins(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(130, 130, 130, 1)),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  static Widget button(String title, Color color) {
    return Container(
      height: 31,
      width: 160,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: color,
      ),
      child: Center(
        child: Text(
          title,
          style: GoogleFonts.poppins(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: AppColors.background),
        ),
      ),
    );
  }
}
