import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kaichi_user/style/app_colors/app_colors.dart';
import 'package:kaichi_user/utils/bottomsheet/bottom_sheet.dart';
import 'package:kaichi_user/utils/constants/constants.dart';
import 'package:kaichi_user/utils/custom%20card/custom_card.dart';

class ManageAddressPage extends StatefulWidget {
  const ManageAddressPage({super.key});

  @override
  State<ManageAddressPage> createState() => _ManageAddressPageState();
}

class _ManageAddressPageState extends State<ManageAddressPage> {
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
              'Your saved Addresses',
              style: GoogleFonts.poppins(
                  fontSize: W * .060,
                  fontWeight: FontWeight.w700,
                  color: AppColors.background),
            ),
            Expanded(
                child: Container(
              child: ListView(
                padding: EdgeInsets.only(top: W * .050),
                children: [
                  CustomCard.customCard5(
                      'Home', '3944 Water Street, Walnut Creek, California',
                      () {
                    CustomBottomSheet.bottomsheet(
                        context,
                        'Delete “Home” Address?',
                        'Are you sure want to delete this address?',
                        'DELETE',
                        AppColors.buttonColor);
                  }, () {}),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomCard.customCard5('3944 Home',
                      '3944 Water Street, Walnut Creek, California', () {
                    CustomBottomSheet.bottomsheet(
                        context,
                        'Delete “Home” Address?',
                        'Are you sure want to delete this address?',
                        'DELETE',
                        AppColors.buttonColor);
                  }, () {}),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}