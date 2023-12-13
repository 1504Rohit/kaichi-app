import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kaichi_user/style/app_colors/app_colors.dart';
import 'package:kaichi_user/style/assets_links/assets_link.dart';
import 'package:kaichi_user/view/homepage/petsalon_tabpage.dart';
import 'package:kaichi_user/view/homepage/salon_tabpage.dart';
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
    return Scaffold(
      backgroundColor: AppColors.bodyColor,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(140.5),
        child: Material(
          elevation: 0,
          child: Container(
            decoration: BoxDecoration(color: AppColors.background),
            child: SafeArea(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Location',
                            style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: AppColors.White),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            '15A, James Street',
                            style: GoogleFonts.poppins(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: AppColors.White),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset(
                            Links.notification,
                            scale: 0.9,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Image.asset(
                            Links.profile,
                            scale: 0.8,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Image.asset(
                            Links.downArrow,
                            scale: 0.9,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                    height: 45,
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                color: AppColors.bodyColor, width: 0))),
                    child: Stack(
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 22.5,
                              color: AppColors.background,
                            ),
                            Container(
                              height: 22.5,
                              decoration: BoxDecoration(
                                  color: AppColors.bodyColor,
                                  border: Border.all(
                                      width: 0, color: AppColors.bodyColor)),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: Container(
                            height: 45,
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
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Row(
                                children: [
                                  Flexible(
                                    flex: 1,
                                    child: Container(
                                      height: 25,
                                      decoration: const BoxDecoration(
                                          image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: AssetImage(
                                                'assets/search1.png',
                                              ))),
                                    ),
                                  ),
                                  Flexible(
                                    flex: 11,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10),
                                      child: Center(
                                        child: TextFormField(
                                          maxLines: 1,
                                          cursorColor: Colors.grey.shade400,
                                          decoration: InputDecoration(
                                              border: InputBorder.none,
                                              hintText:
                                                  'Search location & services',
                                              hintStyle: GoogleFonts.poppins(
                                                  color: Colors.grey.shade300,
                                                  fontSize: 16,
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
                                      width: 22,
                                      height: 22,
                                      decoration: const BoxDecoration(
                                          image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: AssetImage(
                                                  'assets/path.png'))),
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
      ),
      body: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Container(
                  clipBehavior: Clip.hardEdge,
                  height: 45,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
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
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: AppColors.background),
                          ),
                        ),
                      ),
                      Tab(
                        child: Center(
                          child: Text(
                            'SalonPet Salon',
                            style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: AppColors.background),
                          ),
                        ),
                      )
                    ],
                  )),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
                child: TabBarView(
              children: [SalonTab.salonTab(), PetSalonTab.prtSalonTab()],
            ))
          ],
        ),
      ),
    );
  }
}
