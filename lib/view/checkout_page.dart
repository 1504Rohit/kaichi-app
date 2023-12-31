import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kaichi_user/style/app_colors/app_colors.dart';
import 'package:kaichi_user/utils/bottomsheet/bottom_sheet.dart';
import 'package:kaichi_user/utils/constants/constants.dart';
import 'package:kaichi_user/view_model/getx_selecteditem.dart';

class CheckOutPage extends StatefulWidget {
  const CheckOutPage({super.key});

  @override
  State<CheckOutPage> createState() => _CheckOutPageState();
}

class _CheckOutPageState extends State<CheckOutPage> {
  SelectedItem selectedItem = Get.put(SelectedItem());
  @override
  Widget build(BuildContext context) {
    double W = Mq.w;
    return Scaffold(
      backgroundColor: AppColors.bodyColor,
      appBar: AppBar(
        backgroundColor: AppColors.White,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: AppColors.White,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: W * .060),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Checkout',
                      style: GoogleFonts.poppins(
                          fontSize: W * .060,
                          fontWeight: FontWeight.w700,
                          color: AppColors.background),
                    ),
                    SizedBox(
                      height: W * .090,
                    ),
                    Text(
                      'Woodlands Hills Salon',
                      style: GoogleFonts.poppins(
                          fontSize: W * .040,
                          fontWeight: FontWeight.w600,
                          color: AppColors.buttonColor),
                    ),
                    SizedBox(
                      height: W * .140,
                    ),
                    ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: selectedItem.item1.length,
                        itemBuilder: (context, i) {
                          return Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: W * .400,
                                        child: Text(
                                          selectedItem.item1[i].details,
                                          style: GoogleFonts.poppins(
                                              fontSize: W * .038,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black),
                                        ),
                                      ),
                                      Text(
                                        '\$ ${selectedItem.item1[i].Price}',
                                        style: GoogleFonts.poppins(
                                            fontSize: W * .038,
                                            fontWeight: FontWeight.w600,
                                            color: AppColors.buttonColor),
                                      )
                                    ],
                                  ),
                                  Card(
                                    elevation: 2,
                                    child: InkWell(
                                      onTap: () {},
                                      child: Container(
                                        height: W * .070,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(W * .012),
                                          color: AppColors.buttonColor,
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: W * .020),
                                          child: Row(
                                            children: [
                                              Text(
                                                'Select',
                                                style: GoogleFonts.poppins(
                                                    fontSize: W * .038,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.black),
                                              ),
                                              Icon(
                                                Icons.done,
                                                size: W * .040,
                                                color: Colors.black,
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: W * .040,
                              ),
                            ],
                          );
                        }),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: W * .070,
            ),
            Container(
              color: AppColors.White,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: W * .060, vertical: W * .040),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Item Total',
                          style: GoogleFonts.poppins(
                              fontSize: W * .038,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        ),
                        Text(
                          '\$ ${selectedItem.price.value}',
                          style: GoogleFonts.poppins(
                              fontSize: W * .038,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: W * .040,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Coupon Discount',
                          style: GoogleFonts.poppins(
                              fontSize: W * .038,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        ),
                        Text(
                          '-\$ 10',
                          style: GoogleFonts.poppins(
                              fontSize: W * .038,
                              fontWeight: FontWeight.w600,
                              color: Colors.green),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: W * .040,
                    ),
                    Divider(),
                    SizedBox(
                      height: W * .040,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Amount Payable',
                          style: GoogleFonts.poppins(
                              fontSize: W * .040,
                              fontWeight: FontWeight.w600,
                              color: AppColors.buttonColor),
                        ),
                        Text(
                          '\$ ${selectedItem.price.value - 10}',
                          style: GoogleFonts.poppins(
                              fontSize: W * .040,
                              fontWeight: FontWeight.w600,
                              color: AppColors.buttonColor),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: W * .180,
        color: AppColors.White,
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: W * .060),
            child: Container(
              height: W * .140,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(W * .018),
                color: AppColors.buttonColor,
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: W * .030),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: W * .089,
                          width: W * .089,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(W * .012),
                              border: Border.all(
                                color: Colors.black,
                              )),
                          child: Center(
                              child: Obx(
                            () => Text(
                              selectedItem.item1.length.toString(),
                              style: GoogleFonts.poppins(
                                  fontSize: W * .028,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black),
                            ),
                          )),
                        ),
                        SizedBox(
                          width: W * .020,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Obx(
                              () => Text(
                                '\$ ${selectedItem.price.value}',
                                style: GoogleFonts.poppins(
                                    fontSize: W * .040,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black),
                              ),
                            ),
                            Text(
                              'plus taxes',
                              style: GoogleFonts.poppins(
                                  fontSize: W * .032,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black),
                            ),
                          ],
                        )
                      ],
                    ),
                    InkWell(
                      onTap: () {
                        CustomBottomSheet.bottomsSheetSelectDate(
                            context, 'CONFIRM', AppColors.buttonColor);
                      },
                      child: Text(
                        'Select Date & Time',
                        style: GoogleFonts.poppins(
                            fontSize: W * .042,
                            fontWeight: FontWeight.w700,
                            color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
