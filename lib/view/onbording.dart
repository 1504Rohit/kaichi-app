import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kaichi_user/model/onbording_model.dart';
import 'package:kaichi_user/style/app_colors/app_colors.dart';
import 'package:kaichi_user/utils/dot_indicator/dot_indicator.dart';
import 'package:kaichi_user/view/authentication/login_page.dart';
import 'package:kaichi_user/view_model/getx_onbording.dart';

class OnbordingPage extends StatefulWidget {
  const OnbordingPage({super.key});

  @override
  State<OnbordingPage> createState() => _OnbordingPageState();
}

class _OnbordingPageState extends State<OnbordingPage> {
  Onbording logic = Get.put(Onbording());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          onPageChanged: (value) {
            logic.pageCount.value = value;
            print("${logic.pageCount.value}");
          },
          itemCount: content.length,
          controller: logic.controller.value,
          itemBuilder: (context, index) {
            return Stack(
              children: [
                Container(
                  height: double.infinity,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    opacity: 0.7,
                    colorFilter:
                        const ColorFilter.mode(Colors.black, BlendMode.dstATop),
                    fit: BoxFit.cover,
                    image: AssetImage(content[index].bgImage),
                  )),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 60, right: 15),
                        child: Align(
                          alignment: Alignment.topRight,
                          child: TextButton(
                              onPressed: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const LoginPage()));
                              },
                              child: Text(
                                'Skip',
                                style: GoogleFonts.poppins(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.White),
                              )),
                        ),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Text(
                              content[index].details,
                              style: GoogleFonts.poppins(
                                  fontSize: 32,
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.White),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 30),
                            child: Obx(() => DotIndicator()
                                .indicator(logic.pageCount.value)),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            );
          }),
    );
  }
}
