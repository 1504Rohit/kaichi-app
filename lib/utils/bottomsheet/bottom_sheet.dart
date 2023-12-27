import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kaichi_user/style/app_colors/app_colors.dart';
import 'package:kaichi_user/utils/Button/button.dart';
import 'package:kaichi_user/utils/constants/constants.dart';
import 'package:kaichi_user/utils/dialog/custom_dialog.dart';

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
                SizedBox(
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
                              child: Icon(
                                Icons.close,
                                size: W * .040,
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
                          flex: 3,
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
                            SizedBox(
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
                            SizedBox(
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
                            SizedBox(
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
                            SizedBox(
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
            height: W * .550,
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
                          child: Icon(
                            Icons.close,
                            size: W * .040,
                          ))
                    ],
                  ),
                  SizedBox(
                    height: W * .020,
                  ),
                  SizedBox(
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

  static Future<dynamic> bottomsheetShare(
    BuildContext context,
  ) {
    double W = Mq.w;
    return showModalBottomSheet(
        context: context,
        builder: (builder) {
          return Container(
              height: W * .718,
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24))),
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: W * .060, vertical: W * .040),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Share with friends',
                      style: GoogleFonts.poppins(
                          fontSize: W * .048,
                          fontWeight: FontWeight.w700,
                          color: AppColors.background),
                    ),
                    SizedBox(
                      height: W * .445,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                children: [
                                  Container(
                                      height: W * .13,
                                      width: W * .13,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          color: Colors.grey.shade200),
                                      child: Center(
                                        child: Container(
                                          height: W * .070,
                                          width: W * .070,
                                          child: Center(
                                            child:
                                                Image.asset('assets/copy.png'),
                                          ),
                                        ),
                                      )),
                                  Text(
                                    'Copy Link',
                                    style: GoogleFonts.poppins(
                                        letterSpacing: -1,
                                        fontSize: W * .036,
                                        fontWeight: FontWeight.w500,
                                        color: AppColors.background),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                      height: W * .13,
                                      width: W * .13,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          color: Colors.green),
                                      child: Center(
                                        child: Container(
                                          height: W * .070,
                                          width: W * .070,
                                          child: Center(
                                            child: Image.asset(
                                                'assets/whatsapp.png'),
                                          ),
                                        ),
                                      )),
                                  Text(
                                    'WhatsApp',
                                    style: GoogleFonts.poppins(
                                        letterSpacing: -1,
                                        fontSize: W * .036,
                                        fontWeight: FontWeight.w500,
                                        color: AppColors.background),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                      height: W * .13,
                                      width: W * .13,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          color: Colors.blue),
                                      child: Center(
                                        child: Container(
                                          height: W * .070,
                                          width: W * .070,
                                          child: Center(
                                            child: Image.asset('assets/f.png'),
                                          ),
                                        ),
                                      )),
                                  Text(
                                    'Facebook',
                                    style: GoogleFonts.poppins(
                                        letterSpacing: -1,
                                        fontSize: W * .036,
                                        fontWeight: FontWeight.w500,
                                        color: AppColors.background),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                      height: W * .13,
                                      width: W * .13,
                                      decoration: BoxDecoration(
                                        gradient: const LinearGradient(
                                            begin: Alignment.topRight,
                                            end: Alignment.bottomLeft,
                                            colors: [
                                              Color.fromRGBO(253, 96, 122, 1),
                                              Color.fromRGBO(145, 59, 255, 1),
                                              Color.fromRGBO(26, 123, 255, 1)
                                            ]),
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Center(
                                        child: Container(
                                          height: W * .070,
                                          width: W * .070,
                                          child: Center(
                                            child: Image.asset(
                                                'assets/messanger.png'),
                                          ),
                                        ),
                                      )),
                                  Text(
                                    'Messenger',
                                    style: GoogleFonts.poppins(
                                        letterSpacing: -1,
                                        fontSize: W * .036,
                                        fontWeight: FontWeight.w500,
                                        color: AppColors.background),
                                  )
                                ],
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                children: [
                                  Container(
                                      height: W * .13,
                                      width: W * .13,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          color: Colors.blue),
                                      child: Center(
                                        child: Container(
                                          height: W * .070,
                                          width: W * .070,
                                          child: Center(
                                            child: Image.asset(
                                                'assets/twitter.png'),
                                          ),
                                        ),
                                      )),
                                  Text(
                                    'Twitter',
                                    style: GoogleFonts.poppins(
                                        letterSpacing: -1,
                                        fontSize: W * .036,
                                        fontWeight: FontWeight.w500,
                                        color: AppColors.background),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                      height: W * .13,
                                      width: W * .13,
                                      decoration: BoxDecoration(
                                        image: const DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage(
                                                'assets/Group 33448 (1).png')),
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Center(
                                        child: Container(
                                          height: W * .070,
                                          width: W * .070,
                                          child: Center(
                                            child: Image.asset(
                                                'assets/instagram.png'),
                                          ),
                                        ),
                                      )),
                                  Text(
                                    'Instagram',
                                    style: GoogleFonts.poppins(
                                        letterSpacing: -1,
                                        fontSize: W * .036,
                                        fontWeight: FontWeight.w500,
                                        color: AppColors.background),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    height: W * .13,
                                    width: W * .13,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: Colors.blue),
                                    child: Center(
                                      child: Container(
                                        height: W * .070,
                                        width: W * .070,
                                        child: Center(
                                          child:
                                              Image.asset('assets/skype.png'),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    'Skype',
                                    style: GoogleFonts.poppins(
                                        letterSpacing: -1,
                                        fontSize: W * .036,
                                        fontWeight: FontWeight.w500,
                                        color: AppColors.background),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                      height: W * .13,
                                      width: W * .13,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          color: Colors.green),
                                      child: Center(
                                        child: Container(
                                          height: W * .070,
                                          width: W * .070,
                                          child: Center(
                                            child: Image.asset(
                                                'assets/message.png'),
                                          ),
                                        ),
                                      )),
                                  Text(
                                    'Massage',
                                    style: GoogleFonts.poppins(
                                        letterSpacing: -1,
                                        fontSize: W * .036,
                                        fontWeight: FontWeight.w500,
                                        color: AppColors.background),
                                  )
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: StyleButton.loginLikeOutlineBlack('CANCEL'))
                  ],
                ),
              ));
        });
  }

  static Future<dynamic> bottomsSheetReview(BuildContext context,
      String heading, String sub, String button, Color btn) {
    double W = Mq.w;
    return showModalBottomSheet(
        context: context,
        builder: (builder) {
          return Container(
            height: W * 1.10,
            decoration: const BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 1),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24))),
            child: Padding(
              padding: EdgeInsets.all(W * .048),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.abc,
                          size: W * .060,
                          color: Colors.white,
                        ),
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
                            child: Icon(
                              Icons.close,
                              size: W * .040,
                            ))
                      ],
                    ),
                    SizedBox(
                      height: W * .060,
                    ),
                    Text(
                      'How was your experience?',
                      style: GoogleFonts.poppins(
                          fontSize: W * .030,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: W * .040,
                    ),
                    Row(
                      children: [
                        for (int i = 0; i < 5; i++)
                          Row(
                            children: [
                              Icon(
                                Icons.star_border_outlined,
                                size: W * .1,
                              ),
                              SizedBox(
                                width: W * .020,
                              )
                            ],
                          )
                      ],
                    ),
                    SizedBox(
                      height: W * .040,
                    ),
                    Text(
                      'Review:',
                      style: GoogleFonts.poppins(
                          fontSize: W * .030,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: W * .040,
                    ),
                    TextFormField(
                      maxLines: 4,
                      decoration: InputDecoration(
                          hintText: 'Leave a Comment',
                          hintStyle: GoogleFonts.poppins(
                              fontSize: W * .030,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          )),
                    ),
                    SizedBox(
                      height: W * .030,
                    ),
                    StyleButton.loginLike(button, btn)
                  ],
                ),
              ),
            ),
          );
        });
  }

  static Future<dynamic> bottomsSheetSelectDate(
      BuildContext context, String button, Color btn) {
    double W = Mq.w;
    return showModalBottomSheet(
        context: context,
        builder: (builder) {
          List<String> list = ['Sun', 'Mon', 'Wed', 'Thu', 'Fri'];
          List<String> list1 = [
            '10:00 AM',
            '10:30 AM',
            '11:00 AM',
            '11:30 AM',
            '12:00 PM',
            '12:30 PM',
            '01:00 PM',
            '01:30 PM'
          ];
          return Container(
            height: W * 8.40,
            decoration: const BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 1),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24))),
            child: Padding(
              padding: EdgeInsets.all(W * .048),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          'Appointment',
                          style: GoogleFonts.poppins(
                              fontSize: W * .048,
                              fontWeight: FontWeight.w700,
                              color: AppColors.background),
                        ),
                        Icon(
                          Icons.close,
                          color: Colors.white,
                        )
                      ],
                    ),
                    SizedBox(
                      height: W * .040,
                    ),
                    Text(
                      'Select Date & Time for the appointment',
                      style: GoogleFonts.poppins(
                          fontSize: W * .030,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey),
                    ),
                    SizedBox(
                      height: W * .040,
                    ),
                    Text(
                      'When would you like your service?',
                      style: GoogleFonts.poppins(
                          fontSize: W * .030,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: W * .040,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        for (int i = 0; i < 5; i++)
                          Row(
                            children: [
                              Container(
                                height: W * .140,
                                width: W * .140,
                                decoration: BoxDecoration(
                                    color: i == 3
                                        ? AppColors.buttonColor
                                        : Colors.white,
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(color: Colors.black)),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      list[i],
                                      style: GoogleFonts.poppins(
                                          fontSize: W * .038,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      '${20 + i}',
                                      style: GoogleFonts.poppins(
                                          fontSize: W * .038,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )
                      ],
                    ),
                    SizedBox(
                      height: W * .040,
                    ),
                    Text(
                      'When would you like your service?',
                      style: GoogleFonts.poppins(
                          fontSize: W * .030,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: W * .040,
                    ),
                    Container(
                        height: W * .4,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: W * .094,
                                  width: W * .440,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black),
                                      borderRadius: BorderRadius.circular(12)),
                                  child: Center(
                                    child: Text(
                                      list1[0],
                                      style: GoogleFonts.poppins(
                                          fontSize: W * .038,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: W * .094,
                                  width: W * .440,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black),
                                      borderRadius: BorderRadius.circular(12)),
                                  child: Center(
                                    child: Text(
                                      list1[1],
                                      style: GoogleFonts.poppins(
                                          fontSize: W * .038,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: W * .094,
                                  width: W * .440,
                                  decoration: BoxDecoration(
                                      color: AppColors.buttonColor,
                                      border: Border.all(color: Colors.black),
                                      borderRadius: BorderRadius.circular(12)),
                                  child: Center(
                                    child: Text(
                                      list1[2],
                                      style: GoogleFonts.poppins(
                                          fontSize: W * .038,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: W * .094,
                                  width: W * .440,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black),
                                      borderRadius: BorderRadius.circular(12)),
                                  child: Center(
                                    child: Text(
                                      list1[3],
                                      style: GoogleFonts.poppins(
                                          fontSize: W * .038,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: W * .094,
                                  width: W * .440,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black),
                                      borderRadius: BorderRadius.circular(12)),
                                  child: Center(
                                    child: Text(
                                      list1[4],
                                      style: GoogleFonts.poppins(
                                          fontSize: W * .038,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: W * .094,
                                  width: W * .440,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black),
                                      borderRadius: BorderRadius.circular(12)),
                                  child: Center(
                                    child: Text(
                                      list1[5],
                                      style: GoogleFonts.poppins(
                                          fontSize: W * .038,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        )),
                    Text(
                      'Appointment Date & Time',
                      style: GoogleFonts.poppins(
                          fontSize: W * .030,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    Text(
                      '23 April  at  5:00 PM',
                      style: GoogleFonts.poppins(
                          fontSize: W * .030,
                          fontWeight: FontWeight.w500,
                          color: Colors.green),
                    ),
                    InkWell(
                        onTap: () {
                          CustomDialog.custdialogConfirm(
                              context,
                              'Your Appointment Has Been Confirmed',
                              'Your appointment with Woodlan Hills Salon at 11:00 AM on 17 August.',
                              'VIEW APPOINTMENT',
                              AppColors.buttonColor);
                        },
                        child: StyleButton.loginLike(button, btn))
                  ],
                ),
              ),
            ),
          );
        });
  }
}
