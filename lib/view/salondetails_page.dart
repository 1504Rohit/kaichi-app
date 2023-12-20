import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kaichi_user/style/app_colors/app_colors.dart';
import 'package:kaichi_user/utils/constants/constants.dart';
import 'package:kaichi_user/view_model/getx_salondetails.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class SalonDetailsPage extends StatefulWidget {
  String name;
  String rating;
  String location;
  List<String> images;
  SalonDetailsPage({
    Key? key,
    required this.name,
    required this.rating,
    required this.location,
    required this.images,
  }) : super(key: key);

  @override
  State<SalonDetailsPage> createState() => _SalonDetailsPageState();
}

class _SalonDetailsPageState extends State<SalonDetailsPage> {
  LogController controller = Get.put(LogController());

  @override
  Widget build(BuildContext context) {
    double W = Mq.w;
    return Scaffold(
        body: SlidingUpPanel(
            onPanelOpened: () {
              controller.isPageClosed.value = true;
            },
            onPanelClosed: () {
              controller.isPageClosed.value = false;
            },
            minHeight: (Mq.h) - (W * .800),
            maxHeight: 800,
            panel: Column(
              children: [
                SizedBox(
                  height: W * .030,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: W * .060),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Amenities',
                      style: GoogleFonts.poppins(
                          fontSize: W * .048,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(
                  height: W * .040,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: W * .060),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        flex: 1,
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                        text: 'Parking: ',
                                        style: GoogleFonts.poppins(
                                            fontSize: W * .038,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black)),
                                    TextSpan(
                                        text: 'Car',
                                        style: GoogleFonts.poppins(
                                            fontSize: W * .038,
                                            fontWeight: FontWeight.w500,
                                            color: AppColors.buttonColor)),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: W * .015,
                              ),
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                        text: 'Services Offered: ',
                                        style: GoogleFonts.poppins(
                                            fontSize: W * .038,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black)),
                                    TextSpan(
                                        text: 'TV',
                                        style: GoogleFonts.poppins(
                                            fontSize: W * .038,
                                            fontWeight: FontWeight.w500,
                                            color: AppColors.buttonColor)),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                        text: 'Seating Capacity: ',
                                        style: GoogleFonts.poppins(
                                            fontSize: W * .038,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black)),
                                    TextSpan(
                                        text: '20+',
                                        style: GoogleFonts.poppins(
                                            fontSize: W * .038,
                                            fontWeight: FontWeight.w500,
                                            color: AppColors.buttonColor)),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: W * .015,
                              ),
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                        text: 'Room Type: ',
                                        style: GoogleFonts.poppins(
                                            fontSize: W * .038,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black)),
                                    TextSpan(
                                        text: 'AC',
                                        style: GoogleFonts.poppins(
                                            fontSize: W * .038,
                                            fontWeight: FontWeight.w500,
                                            color: AppColors.buttonColor)),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: W * .060,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: W * .060),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Day & Time',
                      style: GoogleFonts.poppins(
                          fontSize: W * .048,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(
                  height: W * .030,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: W * .060),
                  child: Row(
                    children: [
                      SizedBox(
                        height: W * .055,
                        width: W * .055,
                        child: Image.asset('assets/alarm 1.png'),
                      ),
                      SizedBox(
                        width: W * .020,
                      ),
                      Text('8:30 AM  -  9:30 PM ',
                          style: GoogleFonts.poppins(
                              fontSize: W * .038,
                              fontWeight: FontWeight.w500,
                              color: Colors.black)),
                    ],
                  ),
                ),
                SizedBox(
                  height: W * .030,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: W * .060),
                  child: Row(
                    children: [
                      SizedBox(
                        height: W * .055,
                        width: W * .055,
                        child: Image.asset('assets/calender.png'),
                      ),
                      SizedBox(
                        width: W * .020,
                      ),
                      Text('MON, TUS, WED, THU,  FRI, SAT, SUN ',
                          style: GoogleFonts.poppins(
                              fontSize: W * .038,
                              fontWeight: FontWeight.w500,
                              color: Colors.black)),
                    ],
                  ),
                ),
                SizedBox(
                  height: W * .080,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: W * .060),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                height: W * .055,
                                width: W * .055,
                                child: Image.asset('assets/phone.png'),
                              ),
                              SizedBox(
                                width: W * .010,
                              ),
                              Text('Call ',
                                  style: GoogleFonts.poppins(
                                      fontSize: W * .032,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black)),
                            ],
                          ),
                          SizedBox(
                            width: W * .020,
                          ),
                          Column(
                            children: [
                              SizedBox(
                                height: W * .055,
                                width: W * .055,
                                child: Image.asset('assets/pinlocation.png'),
                              ),
                              SizedBox(
                                width: W * .010,
                              ),
                              Text('Directions ',
                                  style: GoogleFonts.poppins(
                                      fontSize: W * .032,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black)),
                            ],
                          ),
                          SizedBox(
                            width: W * .020,
                          ),
                          Column(
                            children: [
                              SizedBox(
                                height: W * .055,
                                width: W * .055,
                                child: Image.asset('assets/share.png'),
                              ),
                              SizedBox(
                                width: W * .010,
                              ),
                              Text('Share',
                                  style: GoogleFonts.poppins(
                                      fontSize: W * .032,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black)),
                            ],
                          ),
                          SizedBox(
                            width: W * .020,
                          ),
                          Column(
                            children: [
                              SizedBox(
                                height: W * .055,
                                width: W * .055,
                                child: Image.asset('assets/heart.png'),
                              ),
                              SizedBox(
                                width: W * .010,
                              ),
                              Text('Favorite',
                                  style: GoogleFonts.poppins(
                                      fontSize: W * .032,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black)),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: W * .055,
                            width: W * .13,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              border: Border.all(
                                  color: AppColors.buttonColor, width: 1),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SizedBox(
                                  height: W * .04,
                                  width: W * .04,
                                  child: Image.asset('assets/staroutline.png'),
                                ),
                                Text('4.1',
                                    style: GoogleFonts.poppins(
                                        fontSize: W * .038,
                                        fontWeight: FontWeight.w500,
                                        color: AppColors.buttonColor)),
                              ],
                            ),
                          ),
                          Text('5k+ ratings',
                              style: GoogleFonts.poppins(
                                  fontSize: W * .032,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black)),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: W * .080,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: W * .060),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: W * .13,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: Colors.black, width: 1)),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: W * .030),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: W * .055,
                                    width: W * .055,
                                    child: Image.asset('assets/percentage.png'),
                                  ),
                                  SizedBox(
                                    width: W * .010,
                                  ),
                                  Text('50% off ',
                                      style: GoogleFonts.poppins(
                                          fontSize: W * .038,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black)),
                                ],
                              ),
                              Text('use code FREE50',
                                  style: GoogleFonts.poppins(
                                      fontSize: W * .024,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black)),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: W * .13,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: Colors.black, width: 1)),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: W * .030),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: W * .055,
                                    width: W * .055,
                                    child: Image.asset('assets/percentage.png'),
                                  ),
                                  SizedBox(
                                    width: W * .010,
                                  ),
                                  Text('60% off on Debit Card ',
                                      style: GoogleFonts.poppins(
                                          fontSize: W * .038,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black)),
                                ],
                              ),
                              Text('No coupon required',
                                  style: GoogleFonts.poppins(
                                      fontSize: W * .024,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black)),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: W * .20,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: W * .060),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Popular Services',
                      style: GoogleFonts.poppins(
                          fontSize: W * .048,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(
                  height: W * .060,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: W * .060),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            radius: W * .130,
                            backgroundImage:
                                const AssetImage('assets/service1.jpg'),
                          ),
                          CircleAvatar(
                            radius: W * .130,
                            backgroundImage:
                                const AssetImage('assets/service2.jpg'),
                          ),
                          CircleAvatar(
                            radius: W * .130,
                            backgroundImage: const AssetImage('assets/service3.webp'),
                          )
                        ],
                      )),
                ),
              ],
            ),
            body: Stack(children: [
              SizedBox(
                height: W * .800,
                child: PageView.builder(
                    onPageChanged: (value) {
                      controller.page.value = value;
                    },
                    scrollDirection: Axis.horizontal,
                    itemCount: widget.images.length,
                    controller: controller.controller.value,
                    itemBuilder: (context, index) {
                      return Obx(() => Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                              height: W * .800,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      colorFilter: controller.isPageClosed.value
                                          ? const ColorFilter.mode(
                                              Colors.black, BlendMode.dstATop)
                                          : null,
                                      fit: BoxFit.cover,
                                      image: AssetImage(widget.images[index]))),
                            ),
                          ));
                    }),
              ),
              Column(children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: W * .060, vertical: W * .030),
                  child: SizedBox(
                    height: W * .25,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          widget.name,
                          style: GoogleFonts.poppins(
                              fontSize: W * .042,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: W * .060,
                          child: Image.asset(
                            'assets/search.png',
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Column(children: [
                  SizedBox(
                    height: W * .220,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: W * .060),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'FOR MEN',
                        style: GoogleFonts.poppins(
                            fontSize: W * .032,
                            fontWeight: FontWeight.w600,
                            color: AppColors.buttonColor),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: W * .060),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            widget.name,
                            style: GoogleFonts.poppins(
                                fontSize: W * .040,
                                fontWeight: FontWeight.w600,
                                color: AppColors.White),
                          ),
                        ),
                        SizedBox(
                          height: W * .006,
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset('assets/star.png'),
                              SizedBox(
                                width: W * .005,
                              ),
                              Text(
                                widget.rating,
                                style: GoogleFonts.poppins(
                                    fontSize: W * .028,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: W * .003,
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/location.png',
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: W * .005,
                              ),
                              Expanded(
                                child: Container(
                                  child: Text(
                                    widget.location,
                                    textAlign: TextAlign.left,
                                    style: GoogleFonts.poppins(
                                        fontSize: W * .028,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: W * .020,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      for (int i = 0; i < widget.images.length; i++)
                        Obx(
                          () => Row(
                            children: [
                              Container(
                                height: i == controller.page.value
                                    ? W * .025
                                    : W * .015,
                                width: i == controller.page.value
                                    ? W * .025
                                    : W * .015,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: i == controller.page.value
                                        ? AppColors.buttonColor
                                        : Colors.grey.shade400),
                              ),
                              SizedBox(
                                width: W * .010,
                              )
                            ],
                          ),
                        ),
                    ],
                  ),
                ]),
              ])
            ])));
  }
}
