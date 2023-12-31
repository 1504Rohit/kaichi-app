import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kaichi_user/style/app_colors/app_colors.dart';
import 'package:kaichi_user/utils/Button/button.dart';
import 'package:kaichi_user/utils/constants/constants.dart';
import 'package:kaichi_user/utils/dialog/custom_dialog.dart';
import 'package:kaichi_user/view/authentication/login_page.dart';
import 'package:kaichi_user/view_model/getx_appointment.dart';
import 'package:kaichi_user/view_model/getx_filter.dart';
import 'package:kaichi_user/view_model/getx_review.dart';

class CustomBottomSheet {
  static Future<dynamic> bottomsheetFilter(
    BuildContext context,
  ) {
    FilterSheet filterSheet = Get.put(FilterSheet());
    return showModalBottomSheet(
        context: context,
        builder: (builder) {
          double W = Mq.w;
          return Container(
            decoration: const BoxDecoration(
              color: Color.fromRGBO(255, 255, 255, 1),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: W * .146,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: W * .040),
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
                                size: W * .050,
                                color: Colors.black,
                              )),
                        ),
                        Flexible(
                          flex: 8,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Sort/Filters',
                              style: GoogleFonts.poppins(
                                  fontSize: W * .042,
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
                                  fontSize: W * .032,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.buttonColor),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Divider(
                  height: W * .005,
                ),
                Obx(() => Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Flexible(
                          flex: 2,
                          child: Container(
                            height: W * 1.095,
                            color: const Color.fromRGBO(242, 242, 245, 1),
                            child: Column(
                              children: [
                                InkWell(
                                  onTap: () {
                                    filterSheet.PageNo.value = 0;
                                  },
                                  child: Container(
                                    height: W * .146,
                                    color: filterSheet.PageNo.value == 0
                                        ? Colors.white
                                        : Color.fromRGBO(242, 242, 245, 1),
                                    child: Padding(
                                      padding: EdgeInsets.only(left: W * .060),
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          'Sort',
                                          style: GoogleFonts.poppins(
                                              fontSize: W * .038,
                                              fontWeight: FontWeight.w600,
                                              color:
                                                  filterSheet.PageNo.value == 0
                                                      ? AppColors.buttonColor
                                                      : Colors.black),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Divider(
                                  height: W * .005,
                                ),
                                InkWell(
                                  onTap: () {
                                    filterSheet.PageNo.value = 1;
                                  },
                                  child: Container(
                                    height: W * .146,
                                    color: filterSheet.PageNo.value == 1
                                        ? Colors.white
                                        : Color.fromRGBO(242, 242, 245, 1),
                                    child: Padding(
                                      padding: EdgeInsets.only(left: W * .060),
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          'Review',
                                          style: GoogleFonts.poppins(
                                              fontSize: W * .038,
                                              fontWeight: FontWeight.w600,
                                              color:
                                                  filterSheet.PageNo.value == 1
                                                      ? AppColors.buttonColor
                                                      : Colors.black),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Divider(
                                  height: W * .005,
                                ),
                                InkWell(
                                  onTap: () {
                                    filterSheet.PageNo.value = 2;
                                  },
                                  child: Container(
                                    height: W * .146,
                                    color: filterSheet.PageNo.value == 2
                                        ? Colors.white
                                        : Color.fromRGBO(242, 242, 245, 1),
                                    child: Padding(
                                      padding: EdgeInsets.only(left: W * .060),
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          'Gender',
                                          style: GoogleFonts.poppins(
                                              fontSize: W * .038,
                                              fontWeight: FontWeight.w600,
                                              color:
                                                  filterSheet.PageNo.value == 2
                                                      ? AppColors.buttonColor
                                                      : Colors.black),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Divider(
                                  height: W * .005,
                                ),
                                InkWell(
                                  onTap: () {
                                    filterSheet.PageNo.value = 3;
                                  },
                                  child: Container(
                                    height: W * .146,
                                    color: filterSheet.PageNo.value == 3
                                        ? Colors.white
                                        : Color.fromRGBO(242, 242, 245, 1),
                                    child: Padding(
                                      padding: EdgeInsets.only(left: W * .060),
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          'Distance',
                                          style: GoogleFonts.poppins(
                                              fontSize: W * .038,
                                              fontWeight: FontWeight.w600,
                                              color:
                                                  filterSheet.PageNo.value == 3
                                                      ? AppColors.buttonColor
                                                      : Colors.black),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Divider(
                                  height: W * .005,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Flexible(
                            flex: 4,
                            child: Align(
                                alignment: Alignment.topCenter,
                                child: filterSheet
                                    .pages[filterSheet.PageNo.value]))
                      ],
                    ))
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
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        heading,
                        style: GoogleFonts.poppins(
                            fontSize: W * .052,
                            fontWeight: FontWeight.w700,
                            color: AppColors.background),
                      ),
                      TextButton(
                          style: TextButton.styleFrom(padding: EdgeInsets.zero),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.close,
                            size: W * .060,
                          ))
                    ],
                  ),
                  SizedBox(
                    height: W * .020,
                  ),
                  SizedBox(
                    width: W * .696,
                    child: Text(
                      sub,
                      style: GoogleFonts.poppins(
                          fontSize: W * .036,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey),
                    ),
                  ),
                  SizedBox(
                    height: W * .060,
                  ),
                  StyleButton.loginLike(context, () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (_) => LoginPage()));
                  }, button, btn)
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
                    StyleButton.loginLikeOutlineBlack(context, () {
                      Navigator.pop(context);
                    }, 'CANCEL')
                  ],
                ),
              ));
        });
  }

  static Future<dynamic> bottomsSheetReview(BuildContext context,
      String heading, String sub, String button, Color btn) {
    BottomReview bottomReview = Get.put(BottomReview());
    double W = Mq.w;
    return showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        builder: (builder) {
          return Obx(() => Wrap(
                children: [
                  Container(
                    height: W * 1.10,
                    decoration: const BoxDecoration(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(24),
                            topRight: Radius.circular(24))),
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: W * .048, right: W * .048, top: W * .048),
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
                                SizedBox(
                                  width: W * .020,
                                ),
                                Text(
                                  heading,
                                  style: GoogleFonts.poppins(
                                      fontSize: W * .052,
                                      fontWeight: FontWeight.w700,
                                      color: AppColors.background),
                                ),
                                TextButton(
                                    style: TextButton.styleFrom(
                                        padding: EdgeInsets.zero),
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Icon(
                                      Icons.close,
                                      size: W * .060,
                                    ))
                              ],
                            ),
                            SizedBox(
                              height: W * .060,
                            ),
                            Text(
                              'How was your experience?',
                              style: GoogleFonts.poppins(
                                  fontSize: W * .034,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            ),
                            SizedBox(
                              height: W * .040,
                            ),
                            Row(
                              children: [
                                Row(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        bottomReview.number.value = 1;
                                      },
                                      child: bottomReview.number.value >= 1
                                          ? Icon(
                                              Icons.star,
                                              size: W * .13,
                                              color: AppColors.buttonColor,
                                            )
                                          : Icon(
                                              Icons.star_border_outlined,
                                              size: W * .13,
                                              color: AppColors.background,
                                            ),
                                    ),
                                    SizedBox(
                                      width: W * .020,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        bottomReview.number.value = 2;
                                      },
                                      child: bottomReview.number.value >= 2
                                          ? Icon(
                                              Icons.star,
                                              size: W * .13,
                                              color: AppColors.buttonColor,
                                            )
                                          : Icon(
                                              Icons.star_border_outlined,
                                              size: W * .13,
                                              color: AppColors.background,
                                            ),
                                    ),
                                    SizedBox(
                                      width: W * .020,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        bottomReview.number.value = 3;
                                      },
                                      child: bottomReview.number.value >= 3
                                          ? Icon(
                                              Icons.star,
                                              size: W * .13,
                                              color: AppColors.buttonColor,
                                            )
                                          : Icon(
                                              Icons.star_border_outlined,
                                              size: W * .13,
                                              color: AppColors.background,
                                            ),
                                    ),
                                    SizedBox(
                                      width: W * .020,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        bottomReview.number.value = 4;
                                      },
                                      child: bottomReview.number.value >= 4
                                          ? Icon(
                                              Icons.star,
                                              size: W * .13,
                                              color: AppColors.buttonColor,
                                            )
                                          : Icon(
                                              Icons.star_border_outlined,
                                              size: W * .13,
                                              color: AppColors.background,
                                            ),
                                    ),
                                    SizedBox(
                                      width: W * .020,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        bottomReview.number.value = 5;
                                      },
                                      child: bottomReview.number.value >= 5
                                          ? Icon(
                                              Icons.star,
                                              size: W * .13,
                                              color: AppColors.buttonColor,
                                            )
                                          : Icon(
                                              Icons.star_border_outlined,
                                              size: W * .13,
                                              color: AppColors.background,
                                            ),
                                    ),
                                    SizedBox(
                                      width: W * .020,
                                    ),
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
                                  fontSize: W * .034,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            ),
                            SizedBox(
                              height: W * .040,
                            ),
                            TextFormField(
                              maxLines: 6,
                              style: GoogleFonts.poppins(
                                  fontSize: W * .030,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey),
                              decoration: InputDecoration(
                                  hintText: 'Leave a Comment',
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: W * .020, horizontal: W * .030),
                                  hintStyle: GoogleFonts.poppins(
                                      fontSize: W * .030,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  )),
                            ),
                            SizedBox(
                              height: W * .040,
                            ),
                            StyleButton.loginLike(context, () {}, button, btn)
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ));
        });
  }

  static Future<dynamic> bottomsSheetSelectDate(
      BuildContext context, String button, Color btn) {
    Appoint appoint = Get.put(Appoint());
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
              padding: EdgeInsets.symmetric(horizontal: W * .048),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: W * .040,
                    ),
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
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Select Date & Time for the appointment',
                        style: GoogleFonts.poppins(
                            fontSize: W * .034,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey),
                      ),
                    ),
                    SizedBox(
                      height: W * .040,
                    ),
                    Text(
                      'When would you like your service?',
                      style: GoogleFonts.poppins(
                          fontSize: W * .034,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: W * .030,
                    ),
                    Obx(
                      () => Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          for (int i = 0; i < 5; i++)
                            Row(
                              children: [
                                InkWell(
                                  onTap: () {
                                    appoint.index.value = i;
                                  },
                                  child: Container(
                                    height: W * .180,
                                    width: W * .160,
                                    decoration: BoxDecoration(
                                        color: appoint.index.value == i
                                            ? AppColors.buttonColor
                                            : Colors.white,
                                        borderRadius: BorderRadius.circular(12),
                                        border: Border.all(
                                            color: Colors.grey.shade300)),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
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
                                ),
                              ],
                            )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: W * .040,
                    ),
                    Text(
                      'When would you like your service?',
                      style: GoogleFonts.poppins(
                          fontSize: W * .034,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: W * .010,
                    ),
                    Container(
                        height: W * .4,
                        child: Obx(() => Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                for (int i = 0; i < 6; i += 2)
                                  Row(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          InkWell(
                                            onTap: () {
                                              appoint.index1.value = i;
                                            },
                                            child: Container(
                                              height: W * .094,
                                              width: W * .420,
                                              decoration: BoxDecoration(
                                                  color: appoint.index1.value ==
                                                          i
                                                      ? AppColors.buttonColor
                                                      : AppColors.White,
                                                  border: Border.all(
                                                      color:
                                                          Colors.grey.shade300),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          W * .015)),
                                              child: Center(
                                                child: Text(
                                                  list1[i],
                                                  style: GoogleFonts.poppins(
                                                      fontSize: W * .038,
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: W * .060,
                                          ),
                                          InkWell(
                                            onTap: () {
                                              appoint.index1.value = i + 1;
                                            },
                                            child: Container(
                                              height: W * .094,
                                              width: W * .420,
                                              decoration: BoxDecoration(
                                                  color: appoint.index1.value ==
                                                          i + 1
                                                      ? AppColors.buttonColor
                                                      : AppColors.White,
                                                  border: Border.all(
                                                      color:
                                                          Colors.grey.shade300),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          W * .015)),
                                              child: Center(
                                                child: Text(
                                                  list1[i + 1],
                                                  style: GoogleFonts.poppins(
                                                      fontSize: W * .038,
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  )
                              ],
                            ))),
                    Text(
                      'Appointment Date & Time',
                      style: GoogleFonts.poppins(
                          fontSize: W * .034,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    Row(
                      children: [
                        Text(
                          '23 April  at  5:00 PM',
                          style: GoogleFonts.poppins(
                              fontSize: W * .034,
                              fontWeight: FontWeight.w500,
                              color: Colors.green),
                        ),
                        SizedBox(
                          width: W * .020,
                        ),
                        Container(
                          height: W * .04,
                          width: W * .04,
                          child: Image.asset('assets/Group 739.png'),
                        )
                      ],
                    ),
                    SizedBox(
                      height: W * .020,
                    ),
                    StyleButton.loginLike(context, () {
                      CustomDialog.custdialogConfirm(
                          context,
                          'Your Appointment Has Been Confirmed',
                          'Your appointment with',
                          ' Woodlands Hills Salon ',
                          'on Wednesday, August 17, 2023 at 11:00 AM',
                          'VIEW APPOINTMENT',
                          AppColors.buttonColor);
                    }, button, btn)
                  ],
                ),
              ),
            ),
          );
        });
  }
}
