import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kaichi_user/style/app_colors/app_colors.dart';
import 'package:kaichi_user/utils/Button/button.dart';
import 'package:kaichi_user/utils/constants/constants.dart';

class CustomDialog {
  static Future<dynamic> custdialog(BuildContext context, String heading,
      String sub, String btn, Color btnclr) {
    double W = Mq.w;
    return showDialog<String>(
        context: context,
        builder: (BuildContext context) => Dialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
              child: SizedBox(
                height: W * .538,
                width: W * .750,
                child: Stack(
                  children: [
                    Align(
                        alignment: Alignment.topRight,
                        child: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(
                              Icons.close,
                              size: W * .050,
                            ))),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: W * .040),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            heading,
                            style: GoogleFonts.poppins(
                                fontSize: W * .046,
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                          ),
                          SizedBox(
                            height: W * .040,
                          ),
                          Text(
                            sub,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                                fontSize: W * .028,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                          SizedBox(
                            height: W * .080,
                          ),
                          StyleButton.loginLike(
                              context, () {}, btn, btnclr, false)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ));
  }

  static Future<dynamic> custdialogConfirm(BuildContext context, String heading,
      String sub1, String title, String sub, String btn, Color btnclr) {
    double W = Mq.w;
    return showDialog<String>(
        context: context,
        builder: (BuildContext context) => Dialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
              child: SizedBox(
                height: W * 1.12,
                width: W * .750,
                child: Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: W * .040),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                              height: W * .400,
                              width: W * .400,
                              child: Image.asset('assets/success.png')),
                          Container(
                            child: Text(
                              heading,
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                  fontSize: W * .048,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black),
                            ),
                          ),
                          RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                              children: <TextSpan>[
                                TextSpan(
                                  text: sub1,
                                  style: GoogleFonts.poppins(
                                      fontSize: W * .033,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black),
                                ),
                                TextSpan(
                                  text: title,
                                  style: GoogleFonts.poppins(
                                      fontSize: W * .033,
                                      fontWeight: FontWeight.w500,
                                      color: AppColors.buttonColor),
                                ),
                                TextSpan(
                                  text: sub,
                                  style: GoogleFonts.poppins(
                                      fontSize: W * .033,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: W * .020,
                          ),
                          StyleButton.loginLike(context, () {
                            print('hello');
                            Navigator.pop(context);
                            custdialogFailed(
                                context,
                                'Your Appointment Failed!',
                                'Appointment with Dr. Jennie Thorn failed. Please check then try again.');
                          }, btn, btnclr, false)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ));
  }

  static Future<dynamic> custdialogFailed(
    BuildContext context,
    String heading,
    String sub,
  ) {
    double W = Mq.w;
    return showDialog<String>(
        context: context,
        builder: (BuildContext context) => Dialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(W * .024),
            ),
            backgroundColor: AppColors.White,
            child: Container(
              height: W * 1.12,
              width: W * .750,
              child: Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: W * .040),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          height: W * .010,
                        ),
                        Container(
                            height: W * .400,
                            width: W * .550,
                            child: Image.asset('assets/cross.png')),
                        Container(
                          child: Text(
                            heading,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                                fontSize: W * .044,
                                fontWeight: FontWeight.w600,
                                color: Colors.red),
                          ),
                        ),
                        RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                text: sub,
                                style: GoogleFonts.poppins(
                                    fontSize: W * .030,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: W * .005,
                        ),
                        StyleButton.loginLike(context, () {
                          print('hello');
                        }, 'TRY AGAIN', AppColors.buttonColor, false),
                        StyleButton.loginLikeOutlineBlack(context, () {
                          Navigator.pop(context);
                        }, 'CANCEL'),
                        SizedBox(
                          height: W * .010,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )));
  }
}
