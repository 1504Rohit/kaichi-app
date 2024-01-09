import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kaichi_user/style/app_colors/app_colors.dart';
import 'package:kaichi_user/utils/bottomsheet/bottom_sheet.dart';
import 'package:kaichi_user/utils/constants/constants.dart';
import 'package:kaichi_user/utils/custom%20card/custom_card.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:kaichi_user/view_model/getx_brightness.dart';

class ManageAddressPage extends StatefulWidget {
  const ManageAddressPage({super.key});

  @override
  State<ManageAddressPage> createState() => _ManageAddressPageState();
}

class _ManageAddressPageState extends State<ManageAddressPage> {
  BrightnessCont brightnessCont = Get.put(BrightnessCont());
  @override
  Widget build(BuildContext context) {
    double W = Mq.w;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: AppColors.background,
          statusBarIconBrightness:
              Brightness.light, // For An// For iOS (dark icons)
        ),
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
                  SizedBox(
                      height: 20,
                      child: Center(
                        child: DottedLine(
                          direction: Axis.horizontal,
                          alignment: WrapAlignment.center,
                          lineLength: double.infinity,
                          lineThickness: 1.0,
                          dashLength: 4.0,
                          dashColor: Colors.grey.shade300,
                          dashRadius: 0.0,
                          dashGapLength: 4.0,
                          dashGapRadius: 0.0,
                        ),
                      )),
                  SizedBox(
                    height: 15,
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
