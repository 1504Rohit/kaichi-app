import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kaichi_user/style/app_colors/app_colors.dart';
import 'package:kaichi_user/utils/Button/button.dart';
import 'package:kaichi_user/utils/constants/constants.dart';

class CustomBottomSheet {
  static Future<dynamic> bottomsheetFilter(
    BuildContext context,
  ) {
    return showModalBottomSheet(
        context: context,
        builder: (builder) {
          double W = Mq.w;
          return Container(
            height: 547.0,
            decoration: const BoxDecoration(
              color: Color.fromRGBO(255, 255, 255, 1),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: W * .116,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          flex: 1,
                          child: TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Icon(
                                Icons.close,
                                color: Colors.black,
                              )),
                        ),
                        Flexible(
                          flex: 6,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Sort/Filters',
                              style: GoogleFonts.poppins(
                                  fontSize: W * .036,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.background),
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 2,
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              'Clear all',
                              style: GoogleFonts.poppins(
                                  fontSize: W * .028,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.buttonColor),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Divider(),
                Row(
                  children: [
                    Flexible(
                      flex: 2,
                      child: Container(
                        color: const Color.fromRGBO(242, 242, 245, 1),
                        child: Column(
                          children: [
                            Container(
                              height: W * .116,
                              child: Center(
                                child: Text(
                                  'Sort',
                                  style: GoogleFonts.poppins(
                                      fontSize: W * .028,
                                      fontWeight: FontWeight.w500,
                                      color: AppColors.buttonColor),
                                ),
                              ),
                            ),
                            const Divider(),
                            Container(
                              height: W * .116,
                              child: Center(
                                child: Text(
                                  'Review',
                                  style: GoogleFonts.poppins(
                                      fontSize: W * .028,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black),
                                ),
                              ),
                            ),
                            const Divider(),
                            Container(
                              height: W * .116,
                              child: Center(
                                child: Text(
                                  'Gender',
                                  style: GoogleFonts.poppins(
                                      fontSize: W * .028,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black),
                                ),
                              ),
                            ),
                            const Divider(),
                            Container(
                              height: W * .116,
                              child: Center(
                                child: Text(
                                  'Distance',
                                  style: GoogleFonts.poppins(
                                      fontSize: W * .028,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black),
                                ),
                              ),
                            ),
                            const Divider(),
                          ],
                        ),
                      ),
                    ),
                    Flexible(flex: 4, child: Container())
                  ],
                )
              ],
            ),
          );
        });
  }

  static Future<dynamic> bottomsheet(BuildContext context, String heading,
      String sub, String button, Color btn) {
    double W = Mq.w;
    return showModalBottomSheet(
        context: context,
        builder: (builder) {
          return Container(
            height: W * .500,
            decoration: const BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 1),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24))),
            child: Padding(
              padding: EdgeInsets.all(W * .048),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        heading,
                        style: GoogleFonts.poppins(
                            fontSize: W * .048,
                            fontWeight: FontWeight.w700,
                            color: AppColors.background),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Icon(Icons.close))
                    ],
                  ),
                  SizedBox(
                    height: W * .020,
                  ),
                  Container(
                    width: W * .516,
                    child: Text(
                      sub,
                      style: GoogleFonts.poppins(
                          fontSize: W * .028,
                          fontWeight: FontWeight.w500,
                          color: AppColors.background),
                    ),
                  ),
                  SizedBox(
                    height: W * .060,
                  ),
                  StyleButton.loginLike(button, btn)
                ],
              ),
            ),
          );
        });
  }
}
