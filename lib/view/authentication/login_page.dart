import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kaichi_user/style/app_colors/app_colors.dart';
import 'package:kaichi_user/style/assets_links/assets_link.dart';
import 'package:kaichi_user/utils/Button/button.dart';
import 'package:kaichi_user/utils/constants/constants.dart';
import 'package:kaichi_user/view/authentication/login_page1.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  double W = Mq.w;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
              alignment: Alignment.topCenter,
              child: SizedBox(
                width: double.infinity,
                child: Image.asset(
                  'assets/loginBG.png',
                  fit: BoxFit.contain,
                ),
              )),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: W * 1.14,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: AppColors.background,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: W * .030),
                    child: SizedBox(
                        height: W * .250,
                        width: W * .258,
                        child: Image.asset(Links.appLogo)),
                  ),
                  Text(
                    'Welcome to  Kainchi',
                    style: GoogleFonts.poppins(
                        fontSize: W * .048,
                        fontWeight: FontWeight.w700,
                        color: AppColors.White),
                  ),
                  SizedBox(
                    height: W * .020,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: Text(
                      'You are one step away to get started Register tour salon here',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                          fontSize: W * .028,
                          fontWeight: FontWeight.w500,
                          color: AppColors.White),
                    ),
                  ),
                  SizedBox(
                    height: W * .060,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: W * .050),
                    child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LoginScreen()));
                        },
                        child: StyleButton.loginLike(
                            'LOGIN', AppColors.buttonColor)),
                  ),
                  SizedBox(
                    height: W * .060,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: W * .050),
                    child: StyleButton.loginLikeOutline(
                        'CREATE AN ACCOUNT', AppColors.background),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
