import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kaichi_user/style/app_colors/app_colors.dart';
import 'package:kaichi_user/utils/Button/button.dart';
import 'package:kaichi_user/utils/bottomsheet/bottom_sheet.dart';
import 'package:kaichi_user/utils/constants/constants.dart';
import 'package:kaichi_user/utils/custom%20card/custom_card.dart';
import 'package:kaichi_user/utils/customslider/custom_slider.dart';
import 'package:kaichi_user/view/googlemap/googlemap_page.dart';
import 'package:kaichi_user/view/search_page.dart';
import 'package:kaichi_user/view/selectitem_page.dart';
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

  ScrollController _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: AppColors.background,
        statusBarIconBrightness: Brightness.light));
    double W = Mq.w;
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(W * .148),
            child: Obx(() => AnimatedContainer(
                  height: W * .248,
                  duration: Duration(milliseconds: 10),
                  decoration: BoxDecoration(
                      color:
                          Colors.white.withOpacity(controller.onSlide.value)),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: W * .040, horizontal: W * .060),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.arrow_back,
                            color: controller.onSlide.value > 0.7
                                ? Colors.black
                                : Colors.white,
                          ),
                        ),
                        Text(
                          widget.name,
                          style: GoogleFonts.poppins(
                            fontSize: W * .042,
                            fontWeight: FontWeight.w600,
                            color: controller.onSlide.value > 0.7
                                ? Colors.black
                                : Colors.white,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => const SearchPage()));
                          },
                          child: SizedBox(
                            height: W * .060,
                            child: Image.asset(
                              'assets/search.png',
                              color: controller.onSlide.value > 0.7
                                  ? Colors.black
                                  : Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ))),
        extendBodyBehindAppBar: true,
        body: SlidingUpPanel(
            onPanelSlide: (value) {
              controller.onSlide.value = value;
            },
            minHeight: (Mq.h) - (W * .800),
            maxHeight: Mq.h,
            panelBuilder: (ScrollController scrollController) =>
                SingleChildScrollView(
                  controller: scrollController,
                  child: Column(
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
                                                  color:
                                                      AppColors.buttonColor)),
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
                                                  color:
                                                      AppColors.buttonColor)),
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
                                                  color:
                                                      AppColors.buttonColor)),
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
                                                  color:
                                                      AppColors.buttonColor)),
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
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: W * .060),
                        child: SizedBox(
                          height: W * .070,
                          child: Center(
                            child: SizedBox(
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
                          ),
                        ),
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
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: W * .060),
                        child: SizedBox(
                          height: W * .070,
                          child: Center(
                            child: SizedBox(
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
                          ),
                        ),
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
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (_) => GoogleMapPage(
                                                  address: widget.location,
                                                  name: widget.name,
                                                  timing:
                                                      '8:30 AM  -  9:30 PM ',
                                                  pic: 'assets/salon.png',
                                                )));
                                  },
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: W * .055,
                                        width: W * .055,
                                        child: Image.asset(
                                            'assets/pinlocation.png'),
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
                                ),
                                SizedBox(
                                  width: W * .020,
                                ),
                                InkWell(
                                  onTap: () {
                                    CustomBottomSheet.bottomsheetShare(context);
                                  },
                                  child: Column(
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
                                ),
                                SizedBox(
                                  width: W * .020,
                                ),
                                InkWell(
                                  onTap: () {
                                    controller.isFavourite.value =
                                        !controller.isFavourite.value;
                                  },
                                  child: Column(
                                    children: [
                                      Obx(() => SizedBox(
                                            height: W * .055,
                                            width: W * .055,
                                            child: controller.isFavourite.value
                                                ? Icon(
                                                    Icons.favorite,
                                                    color:
                                                        AppColors.buttonColor,
                                                  )
                                                : Image.asset(
                                                    'assets/heart.png'),
                                          )),
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
                                ),
                              ],
                            ),
                            InkWell(
                              onTap: () {},
                              child: Column(
                                children: [
                                  Container(
                                    height: W * .055,
                                    width: W * .13,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      border: Border.all(
                                          color: AppColors.buttonColor,
                                          width: 1),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        SizedBox(
                                          height: W * .04,
                                          width: W * .04,
                                          child: Image.asset(
                                              'assets/staroutline.png'),
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
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: W * .060),
                        child: SizedBox(
                          height: W * .070,
                          child: Center(
                            child: SizedBox(
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
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: W * .060),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(W * .018),
                                  border:
                                      Border.all(color: Colors.grey, width: 1)),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: W * .030,
                                  vertical: W * .018,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: W * .055,
                                          width: W * .055,
                                          child: Image.asset(
                                              'assets/percentage.png'),
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
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(W * .018),
                                  border:
                                      Border.all(color: Colors.grey, width: 1)),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: W * .030, vertical: W * .018),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        SizedBox(
                                          height: W * .055,
                                          width: W * .055,
                                          child: Image.asset(
                                              'assets/percentage.png'),
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
                        height: W * .190,
                      ),
                      Container(
                        child: Column(
                          children: [
                            Padding(
                              padding:
                                  EdgeInsets.symmetric(horizontal: W * .060),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Popular Services',
                                    style: GoogleFonts.poppins(
                                        fontSize: W * .048,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (_) => SelectItemPage(
                                                  name: widget.name)));
                                    },
                                    child: Text(
                                      'View all >',
                                      style: GoogleFonts.poppins(
                                          fontSize: W * .038,
                                          fontWeight: FontWeight.w500,
                                          color: AppColors.buttonColor),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: W * .060,
                            ),
                            Padding(
                              padding:
                                  EdgeInsets.symmetric(horizontal: W * .060),
                              child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      CircleAvatar(
                                        radius: W * .130,
                                        backgroundImage: const AssetImage(
                                            'assets/service1.jpg'),
                                      ),
                                      CircleAvatar(
                                        radius: W * .130,
                                        backgroundImage: const AssetImage(
                                            'assets/service2.jpg'),
                                      ),
                                      CircleAvatar(
                                        radius: W * .130,
                                        backgroundImage: const AssetImage(
                                            'assets/service3.webp'),
                                      )
                                    ],
                                  )),
                            ),
                            SizedBox(
                              height: W * .060,
                            ),
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: W * .060,
                          ),
                          Container(
                            color: Colors.white,
                            child: Column(
                              children: [
                                SizedBox(
                                  height: W * .090,
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: W * .060),
                                  child: Column(
                                    children: [
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          'Ratings & Reviews(273)',
                                          style: GoogleFonts.poppins(
                                              fontSize: W * .048,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black),
                                        ),
                                      ),
                                      SizedBox(
                                        height: W * .060,
                                      ),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          'Summary',
                                          style: GoogleFonts.poppins(
                                              fontSize: W * .048,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.grey),
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Column(
                                            children: [
                                              Row(
                                                children: [
                                                  Text(
                                                    '5',
                                                    style: GoogleFonts.poppins(
                                                        fontSize: W * .048,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        color: Colors.black),
                                                  ),
                                                  SizedBox(
                                                    width: W * .010,
                                                  ),
                                                  CustomSlider.customSlider(1),
                                                ],
                                              ),
                                              SizedBox(
                                                height: W * .015,
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    '4',
                                                    style: GoogleFonts.poppins(
                                                        fontSize: W * .048,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        color: Colors.black),
                                                  ),
                                                  SizedBox(
                                                    width: W * .010,
                                                  ),
                                                  CustomSlider.customSlider(
                                                      1.4),
                                                ],
                                              ),
                                              SizedBox(
                                                height: W * .015,
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    '3',
                                                    style: GoogleFonts.poppins(
                                                        fontSize: W * .048,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        color: Colors.black),
                                                  ),
                                                  SizedBox(
                                                    width: W * .010,
                                                  ),
                                                  CustomSlider.customSlider(
                                                      1.8),
                                                ],
                                              ),
                                              SizedBox(
                                                height: W * .015,
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    '2',
                                                    style: GoogleFonts.poppins(
                                                        fontSize: W * .048,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        color: Colors.black),
                                                  ),
                                                  SizedBox(
                                                    width: W * .010,
                                                  ),
                                                  CustomSlider.customSlider(2),
                                                ],
                                              ),
                                              SizedBox(height: W * .015),
                                              Row(
                                                children: [
                                                  Text(
                                                    '1',
                                                    style: GoogleFonts.poppins(
                                                        fontSize: W * .048,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        color: Colors.black),
                                                  ),
                                                  SizedBox(
                                                    width: W * .010,
                                                  ),
                                                  CustomSlider.customSlider(
                                                      2.4),
                                                ],
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            width: W * .060,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Text(
                                                        '4.5',
                                                        style:
                                                            GoogleFonts.poppins(
                                                                fontSize:
                                                                    W * .076,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500),
                                                      ),
                                                      SizedBox(
                                                        width: W * .010,
                                                      ),
                                                      Container(
                                                        width: W * .045,
                                                        height: W * .045,
                                                        child: Image.asset(
                                                          'assets/star.png',
                                                          scale: 0.8,
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                  Text('273 Reviews',
                                                      style:
                                                          GoogleFonts.poppins(
                                                              fontSize:
                                                                  W * .034,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              color:
                                                                  Colors.grey))
                                                ],
                                              ),
                                              SizedBox(
                                                height: W * .060,
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Text(
                                                        '88%',
                                                        style:
                                                            GoogleFonts.poppins(
                                                                fontSize:
                                                                    W * .076,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500),
                                                      ),
                                                      SizedBox(
                                                        width: W * .010,
                                                      ),
                                                    ],
                                                  ),
                                                  Text('Recommended',
                                                      style:
                                                          GoogleFonts.poppins(
                                                              fontSize:
                                                                  W * .034,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              color:
                                                                  Colors.grey))
                                                ],
                                              )
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: W * .060,
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: W * .060),
                                  child: StyleButton.loginLikeOutlineBlack(
                                      context, () {
                                    CustomBottomSheet.bottomsSheetReview(
                                        context,
                                        'Write a review',
                                        '',
                                        'POST',
                                        AppColors.buttonColor);
                                  }, 'WRITE A REVIEW'),
                                ),
                                SizedBox(
                                  height: W * .020,
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: W * .060),
                                  child: Container(
                                      child: RichText(
                                    text: TextSpan(
                                      children: <TextSpan>[
                                        TextSpan(
                                            text:
                                                'Product reviews are managed by a third party to verify authenticity and compliance with',
                                            style: GoogleFonts.poppins(
                                                fontSize: W * .034,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.grey.shade600)),
                                        TextSpan(
                                            text:
                                                ' Ratings & Reviews Guidelines',
                                            style: GoogleFonts.poppins(
                                                fontSize: W * .034,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.blue)),
                                      ],
                                    ),
                                  )),
                                ),
                                SizedBox(
                                  height: W * .020,
                                ),
                                Container(
                                  child: CustomCard.userRatingCard(
                                      'Kristin Watson',
                                      'assets/profile.png',
                                      4,
                                      2),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: W * .060),
                                  child: Container(
                                      child: Text(
                                          'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                                          style: GoogleFonts.poppins(
                                              fontSize: W * .034,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.grey.shade600))),
                                ),
                                SizedBox(
                                  height: W * .220,
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
            body: Stack(children: [
              Obx(
                () => AnimatedContainer(
                  duration: const Duration(microseconds: 1),
                  height: W * .800,
                  child: PageView.builder(
                      onPageChanged: (value) {
                        controller.page.value = value;
                      },
                      scrollDirection: Axis.horizontal,
                      itemCount: widget.images.length,
                      controller: controller.controller.value,
                      itemBuilder: (context, index) {
                        return Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            height: W * .800,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    colorFilter: ColorFilter.mode(
                                        Colors.black.withOpacity(
                                            1 - controller.onSlide.value),
                                        BlendMode.dstIn),
                                    fit: BoxFit.cover,
                                    image: AssetImage(widget.images[index]))),
                          ),
                        );
                      }),
                ),
              ),
              Column(children: [
                Column(children: [
                  SizedBox(
                    height: W * .520,
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
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                  width: W * .045,
                                  height: W * .045,
                                  child: Image.asset('assets/star.png')),
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
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: W * .045,
                                height: W * .045,
                                child: Image.asset(
                                  'assets/location.png',
                                  color: Colors.white,
                                ),
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
              ]),
            ])));
  }
}
