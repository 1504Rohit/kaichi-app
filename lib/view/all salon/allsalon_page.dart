import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kaichi_user/style/app_colors/app_colors.dart';
import 'package:kaichi_user/utils/Button/button.dart';
import 'package:kaichi_user/utils/bottomsheet/bottom_sheet.dart';
import 'package:kaichi_user/utils/constants/constants.dart';
import 'package:kaichi_user/utils/custom%20card/custom_card.dart';
import 'package:kaichi_user/view/notification_page.dart';
import 'package:kaichi_user/view/search_page.dart';
import 'package:kaichi_user/view_model/getx_homepage.dart';

class AllSalonPage extends StatefulWidget {
  const AllSalonPage({super.key});

  @override
  State<AllSalonPage> createState() => _AllSalonPageState();
}

class _AllSalonPageState extends State<AllSalonPage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light));
    HomeLogic homeLogic = Get.put(HomeLogic());
    double W = Mq.w;
    return Scaffold(
      backgroundColor: AppColors.bodyColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(W * .248),
        child: Container(
          decoration: BoxDecoration(color: AppColors.background),
          child: SafeArea(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppBar(
                centerTitle: true,
                backgroundColor: AppColors.background,
                leading: Icon(
                  Icons.abc,
                  color: AppColors.background,
                ),
                title: Text(
                  'Salon',
                  style: GoogleFonts.poppins(
                      fontSize: W * .048,
                      fontWeight: FontWeight.w600,
                      color: AppColors.White),
                ),
                actions: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: W * .040),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const NotificationPage()));
                      },
                      child: SizedBox(
                        height: W * .080,
                        width: W * .080,
                        child: Image.asset(
                          'assets/notification.png',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                  height: W * .10,
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              color: AppColors.bodyColor, width: 0))),
                  child: Stack(
                    children: [
                      Column(
                        children: [
                          Container(
                            height: W * .05,
                            color: AppColors.background,
                          ),
                          Container(
                            height: W * .05,
                            decoration: BoxDecoration(
                                color: AppColors.bodyColor,
                                border: Border.all(
                                    width: 0, color: AppColors.bodyColor)),
                          ),
                        ],
                      ),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: W * .060),
                          child: Container(
                            height: W * .1,
                            decoration: BoxDecoration(
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 2.0,
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(12),
                                color: AppColors.formColor),
                            child: Padding(
                              padding:
                                  EdgeInsets.symmetric(horizontal: W * .030),
                              child: Container(
                                height: W * .1,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: W * .048,
                                      width: W * .048,
                                      decoration: const BoxDecoration(
                                          image: DecorationImage(
                                              fit: BoxFit.fitHeight,
                                              image: AssetImage(
                                                'assets/search.png',
                                              ))),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: W * .040),
                                        child: Container(
                                          child: TextField(
                                            onTap: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (_) =>
                                                          const SearchPage()));
                                            },
                                            maxLines: 1,
                                            cursorColor: Colors.grey.shade400,
                                            decoration: InputDecoration(
                                                border: InputBorder.none,
                                                hintText:
                                                    'Search location & services',
                                                hintStyle: GoogleFonts.poppins(
                                                    color: Colors.grey.shade300,
                                                    fontSize: W * .035,
                                                    fontWeight:
                                                        FontWeight.w500)),
                                            style: GoogleFonts.poppins(
                                                color: Colors.grey.shade700,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: W * .048,
                                      width: W * .048,
                                      decoration: const BoxDecoration(
                                          image: DecorationImage(
                                              fit: BoxFit.fitHeight,
                                              image: AssetImage(
                                                  'assets/path.png'))),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ))
                    ],
                  ))
            ],
          )),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: W * .050,
          ),
          Obx(
            () => SizedBox(
              height: W * .096,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(horizontal: W * .060),
                children: [
                  InkWell(
                      onTap: () {
                        homeLogic.number.value = 0;
                      },
                      child: StyleButton.button(
                          'Premium Salons',
                          homeLogic.number.value == 0
                              ? AppColors.buttonColor
                              : AppColors.White)),
                  SizedBox(
                    width: W * .040,
                  ),
                  InkWell(
                      onTap: () {
                        homeLogic.number.value = 1;
                      },
                      child: StyleButton.button(
                          'Medium Salons',
                          homeLogic.number.value == 1
                              ? AppColors.buttonColor
                              : AppColors.White)),
                  SizedBox(
                    width: W * .040,
                  ),
                  InkWell(
                      onTap: () {
                        homeLogic.number.value = 2;
                      },
                      child: StyleButton.button(
                          'Basic Salons',
                          homeLogic.number.value == 2
                              ? AppColors.buttonColor
                              : AppColors.White)),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: ListView(
                padding: EdgeInsets.only(top: W * .050),
                scrollDirection: Axis.vertical,
                children: [
                  CustomCard.customCard1(
                      context,
                      'assets/salon.png',
                      'Woodlands Hills Salon',
                      'Beuty salon - Near PalletMall, Woodland Hills',
                      '4.8 ( 1900 ratings )'),
                  SizedBox(
                    height: W * .040,
                  ),
                  CustomCard.customCard1(
                      context,
                      'assets/salon.png',
                      'Woodlands Hills Salon',
                      'Beuty salon - Near PalletMall, Woodland Hills',
                      '4.8 ( 1900 ratings )'),
                  SizedBox(
                    height: W * .040,
                  ),
                  CustomCard.customCard1(
                      context,
                      'assets/salon.png',
                      'Woodlands Hills Salon',
                      'Beuty salon - Near PalletMall, Woodland Hills',
                      '4.8 ( 1900 ratings )'),
                  SizedBox(
                    height: W * .040,
                  ),
                  CustomCard.customCard1(
                      context,
                      'assets/salon.png',
                      'Woodlands Hills Salon',
                      'Beuty salon - Near PalletMall, Woodland Hills',
                      '4.8 ( 1900 ratings )'),
                  SizedBox(
                    height: W * .040,
                  ),
                  CustomCard.customCard1(
                      context,
                      'assets/salon.png',
                      'Woodlands Hills Salon',
                      'Beuty salon - Near PalletMall, Woodland Hills',
                      '4.8 ( 1900 ratings )'),
                  SizedBox(
                    height: W * .040,
                  ),
                  CustomCard.customCard1(
                      context,
                      'assets/salon.png',
                      'Woodlands Hills Salon',
                      'Beuty salon - Near PalletMall, Woodland Hills',
                      '4.8 ( 1900 ratings )')
                ],
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: AppColors.White,
          child: Image.asset('assets/filter.png'),
          onPressed: () => CustomBottomSheet.bottomsheetFilter(context)),
    );
  }
}
