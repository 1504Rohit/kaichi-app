import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kaichi_user/style/app_colors/app_colors.dart';
import 'package:kaichi_user/style/assets_links/assets_link.dart';
import 'package:kaichi_user/utils/Button/button.dart';
import 'package:kaichi_user/utils/constants/constants.dart';
import 'package:kaichi_user/view/authentication/login_page1.dart';
import 'package:kaichi_user/view/authentication/signup_page.dart';

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
                width: Mq.w,
                height: Mq.h * .513,
                child: Image.asset(
                  'assets/loginBG.png',
                  fit: BoxFit.cover,
                ),
              )),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: Mq.h * .563,
              width: W,
              decoration: BoxDecoration(
                  color: AppColors.background,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(W * .040),
                      topRight: Radius.circular(W * .040))),
              child: Padding(
                padding: EdgeInsets.symmetric(
                    vertical: Mq.h * .030, horizontal: W * .060),
                child: SizedBox(
                  child: Column(
                    children: [
                      SizedBox(
                          height: Mq.h * .170,
                          width: W * .340,
                          child: Image.asset(Links.appLogo)),
                      SizedBox(
                        height: Mq.h * .020,
                      ),
                      Text(
                        'Welcome to  Kainchi',
                        style: GoogleFonts.poppins(
                            fontSize: W * .065,
                            fontWeight: FontWeight.w700,
                            color: AppColors.White),
                      ),
                      SizedBox(
                        height: Mq.h * .015,
                      ),
                      Container(
                        child: Text(
                          'You are one step away to get started Register tour salon here',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                              fontSize: W * .038,
                              fontWeight: FontWeight.w500,
                              color: AppColors.White),
                        ),
                      ),
                      SizedBox(
                        height: Mq.h * .035,
                      ),
                      StyleButton.loginLike(context, () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginScreen()));
                      }, 'LOGIN', AppColors.buttonColor),
                      SizedBox(
                        height: Mq.h * .020,
                      ),
                      StyleButton.loginLikeOutline(context, () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignupPage()));
                      }, 'CREATE AN ACCOUNT', AppColors.background)
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
