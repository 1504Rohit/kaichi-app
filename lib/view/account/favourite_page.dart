import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kaichi_user/style/app_colors/app_colors.dart';
import 'package:kaichi_user/utils/constants/constants.dart';
import 'package:kaichi_user/utils/custom%20card/custom_card.dart';

class FavouritePage extends StatefulWidget {
  const FavouritePage({super.key});

  @override
  State<FavouritePage> createState() => _FavouritePageState();
}

class _FavouritePageState extends State<FavouritePage> {
  @override
  Widget build(BuildContext context) {
    double W = Mq.w;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back)),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Your favorites',
              style: GoogleFonts.poppins(
                  fontSize: W * .060,
                  fontWeight: FontWeight.w700,
                  color: AppColors.background),
            ),
            Expanded(
              child: Container(
                child: ListView(
                  padding: const EdgeInsets.only(top: 30),
                  children: [
                    CustomCard.customCard4(
                      'assets/running.png',
                      'Woodlands Hills Salon',
                      'Keira throughway • 5.0 Kms',
                      'Haircut x 1 + Shave x 1',
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomCard.customCard4(
                      'assets/running.png',
                      'Woodlands Hills Salon',
                      'Keira throughway • 5.0 Kms',
                      'Haircut x 1 + Shave x 1',
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomCard.customCard4(
                      'assets/running.png',
                      'Woodlands Hills Salon',
                      'Keira throughway • 5.0 Kms',
                      'Haircut x 1 + Shave x 1',
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomCard.customCard4(
                      'assets/running.png',
                      'Woodlands Hills Salon',
                      'Keira throughway • 5.0 Kms',
                      'Haircut x 1 + Shave x 1',
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
