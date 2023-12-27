import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kaichi_user/style/app_colors/app_colors.dart';
import 'package:kaichi_user/style/assets_links/assets_link.dart';
import 'package:kaichi_user/utils/constants/constants.dart';
import 'package:kaichi_user/view_model/getx_bottomNav.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  Navigation nav = Get.put(Navigation());
  @override
  Widget build(BuildContext context) {
    double W = Mq.w;
    return Scaffold(
      body: Obx(
        () => nav.page[nav.pageNo.value],
      ),
      bottomNavigationBar: Container(
        height: W * .166,
        decoration: BoxDecoration(
            color: AppColors.background,
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: W * .025),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                  onTap: () {
                    nav.pageNo.value = 0;
                  },
                  child: Obx(
                    () => Column(
                      children: [
                        Container(
                          height: W * .055,
                          width: W * .055,
                          child: Image.asset(Links.Nav1,
                              color: nav.pageNo.value == 0
                                  ? AppColors.buttonColor
                                  : AppColors.White),
                        ),
                        SizedBox(
                          height: W * .016,
                        ),
                        Text(
                          'Home',
                          style: GoogleFonts.poppins(
                              fontSize: W * .024,
                              fontWeight: FontWeight.w600,
                              color: nav.pageNo.value == 0
                                  ? AppColors.buttonColor
                                  : AppColors.White),
                        )
                      ],
                    ),
                  )),
              InkWell(
                  onTap: () {
                    nav.pageNo.value = 1;
                  },
                  child: Obx(
                    () => Column(
                      children: [
                        Container(
                          height: W * .055,
                          width: W * .055,
                          child: Image.asset(
                            Links.Nav2,
                            scale: 0.92,
                            color: nav.pageNo.value == 1
                                ? AppColors.buttonColor
                                : AppColors.White,
                          ),
                        ),
                        SizedBox(
                          height: W * .016,
                        ),
                        Text(
                          'All salon',
                          style: GoogleFonts.poppins(
                              fontSize: W * .024,
                              fontWeight: FontWeight.w600,
                              color: nav.pageNo.value == 1
                                  ? AppColors.buttonColor
                                  : AppColors.White),
                        )
                      ],
                    ),
                  )),
              InkWell(
                  onTap: () {
                    nav.pageNo.value = 2;
                  },
                  child: Obx(
                    () => Column(
                      children: [
                        Container(
                          height: W * .055,
                          width: W * .055,
                          child: Image.asset(
                            Links.Nav3,
                            color: nav.pageNo.value == 2
                                ? AppColors.buttonColor
                                : AppColors.White,
                          ),
                        ),
                        SizedBox(
                          height: W * .016,
                        ),
                        Text(
                          'Booking',
                          style: GoogleFonts.poppins(
                              fontSize: W * .024,
                              fontWeight: FontWeight.w600,
                              color: nav.pageNo.value == 2
                                  ? AppColors.buttonColor
                                  : AppColors.White),
                        )
                      ],
                    ),
                  )),
              InkWell(
                  onTap: () {
                    nav.pageNo.value = 3;
                  },
                  child: Obx(
                    () => Column(
                      children: [
                        Container(
                          height: W * .055,
                          width: W * .055,
                          child: Image.asset(
                            Links.Nav4,
                            color: nav.pageNo.value == 3
                                ? AppColors.buttonColor
                                : AppColors.White,
                          ),
                        ),
                        SizedBox(
                          height: W * .016,
                        ),
                        Text(
                          'Account',
                          style: GoogleFonts.poppins(
                              fontSize: W * .024,
                              fontWeight: FontWeight.w600,
                              color: nav.pageNo.value == 3
                                  ? AppColors.buttonColor
                                  : AppColors.White),
                        )
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
