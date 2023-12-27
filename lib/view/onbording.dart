import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kaichi_user/model/onbording_model.dart';
import 'package:kaichi_user/style/app_colors/app_colors.dart';
import 'package:kaichi_user/utils/constants/constants.dart';
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
    double W = Mq.w;
    return Scaffold(
        body: Stack(
      children: [
        PageView.builder(
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
                      colorFilter: const ColorFilter.mode(
                          Colors.black, BlendMode.dstATop),
                      fit: BoxFit.cover,
                      image: AssetImage(content[index].bgImage),
                    )),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: W * .040, vertical: W * .15),
                              child: Text(
                                content[index].details,
                                style: GoogleFonts.poppins(
                                    fontSize: W * .082,
                                    fontWeight: FontWeight.w700,
                                    color: AppColors.White),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              );
            }),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(top: W * .080, right: W * .040),
              child: Align(
                alignment: Alignment.topRight,
                child: TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginPage()));
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
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: W * .060),
                child:
                    Obx(() => DotIndicator().indicator(logic.pageCount.value)),
              ),
            )
          ],
        ),
      ],
    ));
  }
}
