// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:kaichi_user/style/app_colors/app_colors.dart';
import 'package:kaichi_user/utils/constants/constants.dart';
import 'package:kaichi_user/view/checkout_page.dart';
import 'package:kaichi_user/view/search_page.dart';
import 'package:kaichi_user/view_model/getx_selecteditem.dart';

class SelectItemPage extends StatefulWidget {
  String name;
  SelectItemPage({
    Key? key,
    required this.name,
  }) : super(key: key);

  @override
  State<SelectItemPage> createState() => _SelectItemPageState();
}

class _SelectItemPageState extends State<SelectItemPage> {
  SelectedItem selectedItem = Get.put(SelectedItem());

  @override
  void initState() {
    // TODO: implement initState
    selectedItem.addFun();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double W = Mq.w;
    return Scaffold(
      backgroundColor: AppColors.bodyColor,
      appBar: AppBar(
        centerTitle: true,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: AppColors.background,
          statusBarIconBrightness: Brightness.light,
        ),
        backgroundColor: AppColors.White,
        title: Text(
          widget.name,
          style: GoogleFonts.poppins(
              fontSize: W * .042,
              fontWeight: FontWeight.w600,
              color: Colors.black),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: W * .060),
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const SearchPage()));
              },
              child: SizedBox(
                height: W * .060,
                child: Image.asset(
                  'assets/search.png',
                  color: Colors.black,
                ),
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => CheckOutPage()));
        },
        child: Container(
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
                                borderRadius: BorderRadius.circular(W * .015),
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
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => CheckOutPage()));
                        },
                        child: Text(
                          'Continue',
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
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Obx(
              () => selectedItem.item1.length == 0
                  ? Container()
                  : Padding(
                      padding: EdgeInsets.symmetric(vertical: W * .040),
                      child: Container(
                        width: double.infinity,
                        color: AppColors.White,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: W * .060),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: W * .060,
                              ),
                              Container(
                                child: Text(
                                  'Item selected',
                                  style: GoogleFonts.poppins(
                                      fontSize: W * .042,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black),
                                ),
                              ),
                              ListView.builder(
                                  shrinkWrap: true,
                                  physics: NeverScrollableScrollPhysics(),
                                  itemCount: selectedItem.item1.length,
                                  itemBuilder: (context, i) {
                                    return Column(
                                      children: [
                                        Container(
                                          height: W * .3,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  Container(
                                                    height: W * .2,
                                                    width: W * .2,
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12),
                                                        image: DecorationImage(
                                                            fit: BoxFit.cover,
                                                            image: AssetImage(
                                                                selectedItem
                                                                    .item1[i]
                                                                    .bgImage))),
                                                  ),
                                                  SizedBox(
                                                    width: W * .020,
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            vertical: W * .030),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Container(
                                                              width: W * .4,
                                                              child: Text(
                                                                selectedItem
                                                                    .item1[i]
                                                                    .details,
                                                                style: GoogleFonts.poppins(
                                                                    fontSize: W *
                                                                        .038,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                    color: Colors
                                                                        .black),
                                                              ),
                                                            ),
                                                            Text(
                                                              '\$ ${selectedItem.item1[i].Price}',
                                                              style: GoogleFonts.poppins(
                                                                  fontSize:
                                                                      W * .038,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  color: AppColors
                                                                      .buttonColor),
                                                            ),
                                                          ],
                                                        ),
                                                        Row(
                                                          children: [
                                                            Container(
                                                              height: W * .045,
                                                              width: W * .045,
                                                              child: Image.asset(
                                                                  'assets/time.png'),
                                                            ),
                                                            Text(
                                                              '${selectedItem.item1[i].time} Mins',
                                                              style: GoogleFonts.poppins(
                                                                  fontSize:
                                                                      W * .038,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  color: Colors
                                                                      .grey),
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Padding(
                                                padding: EdgeInsets.symmetric(
                                                    vertical: W * .050),
                                                child: Card(
                                                  elevation: 2,
                                                  child: InkWell(
                                                    onTap: () {
                                                      selectedItem.items.add(
                                                          selectedItem
                                                              .item1[i]);
                                                      selectedItem
                                                              .price.value -=
                                                          selectedItem.item1[i]
                                                              .Price as int;
                                                      selectedItem.item1.remove(
                                                          selectedItem
                                                              .item1[i]);
                                                    },
                                                    child: Container(
                                                      height: W * .070,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    W * .012),
                                                        color: AppColors
                                                            .buttonColor,
                                                      ),
                                                      child: Padding(
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                                horizontal:
                                                                    W * .020),
                                                        child: Row(
                                                          children: [
                                                            Text(
                                                              'Select',
                                                              style: GoogleFonts.poppins(
                                                                  fontSize:
                                                                      W * .038,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  color: Colors
                                                                      .black),
                                                            ),
                                                            Icon(
                                                              Icons.done,
                                                              size: W * .040,
                                                              color:
                                                                  Colors.black,
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        i >= selectedItem.item1.length - 1
                                            ? Container()
                                            : Divider(),
                                      ],
                                    );
                                  })
                            ],
                          ),
                        ),
                      ),
                    ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: W * .020),
              child: Container(
                width: double.infinity,
                color: AppColors.White,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: W * .060),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: W * .060,
                      ),
                      Container(
                        child: Text(
                          'Recommended (5)',
                          style: GoogleFonts.poppins(
                              fontSize: W * .042,
                              fontWeight: FontWeight.w700,
                              color: Colors.black),
                        ),
                      ),
                      Container(
                          width: double.infinity,
                          child: Obx(
                            () => ListView.builder(
                                physics: NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                itemCount: selectedItem.items.length,
                                itemBuilder: (context, i) {
                                  return Column(
                                    children: [
                                      Container(
                                        height: W * .3,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Container(
                                                  height: W * .2,
                                                  width: W * .2,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12),
                                                      image: DecorationImage(
                                                          fit: BoxFit.cover,
                                                          image: AssetImage(
                                                              selectedItem
                                                                  .items[i]
                                                                  .bgImage))),
                                                ),
                                                SizedBox(
                                                  width: W * .020,
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      vertical: W * .055),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Container(
                                                            width: W * .4,
                                                            child: Text(
                                                              selectedItem
                                                                  .items[i]
                                                                  .details,
                                                              style: GoogleFonts.poppins(
                                                                  fontSize:
                                                                      W * .038,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  color: Colors
                                                                      .black),
                                                            ),
                                                          ),
                                                          Text(
                                                            '\$ ${selectedItem.items[i].Price}',
                                                            style: GoogleFonts.poppins(
                                                                fontSize:
                                                                    W * .038,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                color: AppColors
                                                                    .buttonColor),
                                                          ),
                                                        ],
                                                      ),
                                                      Row(
                                                        children: [
                                                          Container(
                                                            height: W * .045,
                                                            width: W * .045,
                                                            child: Image.asset(
                                                                'assets/time.png'),
                                                          ),
                                                          Text(
                                                            '${selectedItem.items[i].time} Mins',
                                                            style: GoogleFonts
                                                                .poppins(
                                                                    fontSize: W *
                                                                        .038,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                    color: Colors
                                                                        .grey),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Padding(
                                              padding: EdgeInsets.symmetric(
                                                  vertical: W * .050),
                                              child: Card(
                                                elevation: 2,
                                                child: InkWell(
                                                  onTap: () {
                                                    selectedItem.item1.add(
                                                        selectedItem.items[i]);
                                                    selectedItem.price.value +=
                                                        selectedItem.items[i]
                                                            .Price as int;
                                                    selectedItem.items.remove(
                                                        selectedItem.items[i]);
                                                  },
                                                  child: Container(
                                                    height: W * .070,
                                                    decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: AppColors
                                                              .buttonColor,
                                                          width: 0.5),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              W * .012),
                                                      color: AppColors.White,
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              horizontal:
                                                                  W * .020),
                                                      child: Row(
                                                        children: [
                                                          Text(
                                                            'Select',
                                                            style: GoogleFonts.poppins(
                                                                fontSize:
                                                                    W * .038,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                color: AppColors
                                                                    .buttonColor),
                                                          ),
                                                          Icon(
                                                            Icons.add,
                                                            size: W * .040,
                                                            color: AppColors
                                                                .buttonColor,
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      i >= selectedItem.items.length - 1
                                          ? Container()
                                          : Divider(),
                                    ],
                                  );
                                }),
                          ))
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
