import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
                height: W * .438,
                width: W * .650,
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
                              size: W * .040,
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
                                fontSize: W * .038,
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                          ),
                          SizedBox(
                            height: W * .020,
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
                            height: W * .020,
                          ),
                          StyleButton.loginLike(btn, btnclr)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ));
  }

  static Future<dynamic> custdialogConfirm(BuildContext context, String heading,
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
                          Text(
                            sub,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                                fontSize: W * .038,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                          SizedBox(
                            height: W * .020,
                          ),
                          StyleButton.loginLike(btn, btnclr)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ));
  }
}
