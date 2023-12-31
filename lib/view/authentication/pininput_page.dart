import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kaichi_user/style/app_colors/app_colors.dart';
import 'package:kaichi_user/utils/Button/button.dart';
import 'package:kaichi_user/utils/constants/constants.dart';
import 'package:kaichi_user/view/bottom_navigation.dart';
import 'package:kaichi_user/view/homepage/home_page.dart';
import 'package:kaichi_user/view_model/getx_pininput.dart';
import 'package:pinput/pinput.dart';

class PinInputPage extends StatefulWidget {
  const PinInputPage({super.key});

  @override
  State<PinInputPage> createState() => _PinInputPageState();
}

class _PinInputPageState extends State<PinInputPage> {
  PinInput pinInput = Get.put(PinInput());
  @override
  Widget build(BuildContext context) {
    double W = Mq.w;
    return Scaffold(
        backgroundColor: AppColors.White,
        appBar: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle(
            // Status bar color
            statusBarColor: Colors.transparent,

            // Status bar brightness (optional)
            statusBarIconBrightness:
                Brightness.light, // For An// For iOS (dark icons)
          ),
          backgroundColor: AppColors.White,
        ),
        body: Obx(
          () => Padding(
            padding: EdgeInsets.only(
                left: W * .040, right: W * .040, bottom: Mq.h * .010),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Verify OTP',
                      style: GoogleFonts.poppins(
                          fontSize: W * .090,
                          fontWeight: FontWeight.w700,
                          color: AppColors.background),
                    ),
                    SizedBox(
                      height: Mq.h * .020,
                    ),
                    Pinput(
                      controller: pinInput.controller.value,
                      validator: (s) {
                        print(s);
                      },
                      showCursor: true,
                      focusedPinTheme: PinTheme(
                          width: W * .400,
                          height: Mq.h * .065,
                          textStyle: GoogleFonts.poppins(
                              fontSize: W * .040, fontWeight: FontWeight.w600),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey, width: 1),
                              borderRadius: BorderRadius.circular(W * .014))),
                      defaultPinTheme: PinTheme(
                        width: W * .400,
                        height: Mq.h * .065,
                        textStyle: GoogleFonts.poppins(
                            fontSize: W * .040, fontWeight: FontWeight.w600),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 1),
                          borderRadius: BorderRadius.circular(W * .028),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: Mq.h * .020,
                    ),
                    Row(
                      children: [
                        Text(
                          'Don\'t Receive the Code?',
                          style: GoogleFonts.poppins(
                              fontSize: W * .039,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey),
                        ),
                        SizedBox(
                          width: W * .010,
                        ),
                        TextButton(
                          style: TextButton.styleFrom(padding: EdgeInsets.zero),
                          onPressed: () {},
                          child: Text('Resend',
                              style: GoogleFonts.poppins(
                                  fontSize: W * .039,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.background)),
                        ),
                      ],
                    )
                  ],
                ),
                StyleButton.loginLike(context, () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => BottomNavigation()));
                }, 'LOGIN', AppColors.buttonColor)
              ],
            ),
          ),
        ));
  }
}
