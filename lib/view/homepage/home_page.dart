import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kaichi_user/style/app_colors/app_colors.dart';
import 'package:kaichi_user/utils/constants/constants.dart';
import 'package:kaichi_user/view/homepage/petsalon_tabpage.dart';
import 'package:kaichi_user/view/homepage/salon_tabpage.dart';
import 'package:kaichi_user/view/notification_page.dart';
import 'package:kaichi_user/view/search_page.dart';
import 'package:kaichi_user/view_model/getx_homepage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeLogic homeController = Get.put(HomeLogic());
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        systemNavigationBarColor: AppColors.background,
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light));
    double W = Mq.w;
    return Scaffold(
      backgroundColor: AppColors.bodyColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(W * .260),
        child: Container(
          decoration: BoxDecoration(color: AppColors.background),
          child: SafeArea(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: W * .060, vertical: W * .020),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Location',
                          style: GoogleFonts.poppins(
                              fontSize: W * .028,
                              fontWeight: FontWeight.w500,
                              color: AppColors.White),
                        ),
                        Container(
                          height: W * .01,
                        ),
                        Text(
                          '15A, James Street',
                          style: GoogleFonts.poppins(
                              fontSize: W * .044,
                              fontWeight: FontWeight.w600,
                              color: AppColors.White),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        InkWell(
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
                        Container(
                          width: W * .04,
                        ),
                        SizedBox(
                          height: W * .09,
                          width: W * .09,
                          child: Image.asset(
                            'assets/profile.png',
                          ),
                        ),
                        Container(
                          height: W * .02,
                        ),
                        SizedBox(
                          height: W * .046,
                          width: W * .046,
                          child: Image.asset('assets/Vector.png'),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                  height: W * .1,
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
                            padding: EdgeInsets.symmetric(horizontal: W * .030),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Flexible(
                                  flex: 1,
                                  child: Container(
                                    height: W * .048,
                                    decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.fitHeight,
                                            image: AssetImage(
                                              'assets/search.png',
                                            ))),
                                  ),
                                ),
                                Flexible(
                                  flex: 11,
                                  child: Container(
                                    height: W * .1,
                                    padding: EdgeInsets.symmetric(
                                        horizontal: W * .01),
                                    child: Align(
                                      alignment: Alignment.topCenter,
                                      child: TextFormField(
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
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                                    vertical: W * .030),
                                            border: InputBorder.none,
                                            hintText:
                                                'Search location & services',
                                            hintStyle: GoogleFonts.poppins(
                                                color: Colors.grey.shade300,
                                                fontSize: W * .035,
                                                fontWeight: FontWeight.w500)),
                                        style: GoogleFonts.poppins(
                                            color: Colors.grey.shade700,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 1,
                                  child: Container(
                                    height: W * .045,
                                    decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.fitHeight,
                                            image:
                                                AssetImage('assets/path.png'))),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ))
            ],
          )),
        ),
      ),
      body: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            SizedBox(
              height: W * .040,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: W * .060),
              child: Container(
                  clipBehavior: Clip.hardEdge,
                  height: W * .11,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade200, width: 1),
                      borderRadius: BorderRadius.circular(W * .024),
                      color: AppColors.formColor),
                  child: TabBar(
                    dividerHeight: 0,
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicator: BoxDecoration(color: AppColors.buttonColor),
                    splashBorderRadius: BorderRadius.circular(12),
                    physics: const ClampingScrollPhysics(),
                    tabs: [
                      Tab(
                        child: Center(
                          child: Text(
                            'Salon',
                            style: GoogleFonts.poppins(
                                fontSize: W * .039,
                                fontWeight: FontWeight.w600,
                                color: AppColors.background),
                          ),
                        ),
                      ),
                      Tab(
                        child: Center(
                          child: Text(
                            'Pet Salon',
                            style: GoogleFonts.poppins(
                                fontSize: W * .039,
                                fontWeight: FontWeight.w600,
                                color: AppColors.background),
                          ),
                        ),
                      )
                    ],
                  )),
            ),
            SizedBox(
              height: W * .040,
            ),
            Expanded(
                child: TabBarView(
              children: [
                SalonTab.salonTab(context),
                PetSalonTab.petsalonTab(context)
              ],
            ))
          ],
        ),
      ),
    );
  }
}
