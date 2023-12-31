import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kaichi_user/style/app_colors/app_colors.dart';
import 'package:kaichi_user/utils/Button/button.dart';
import 'package:kaichi_user/utils/constants/constants.dart';
import 'package:kaichi_user/view/authentication/forgotpassword_page.dart';
import 'package:kaichi_user/view/authentication/pininput_page.dart';
import 'package:kaichi_user/view/authentication/signup_page.dart';
import 'package:kaichi_user/view/bottom_navigation.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    double W = Mq.w;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: Mq.h * .250,
              color: AppColors.background,
              child: Center(
                child: SafeArea(
                  child: Container(
                      height: Mq.h * .306,
                      width: W * .306,
                      child: Image.asset('assets/kainchi (2)-01 1.png')),
                ),
              ),
            ),
            SizedBox(
              height: Mq.h * .030,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: W * .060),
              child: Text(
                'Welcome Back!',
                style: GoogleFonts.poppins(
                    fontSize: W * .090,
                    fontWeight: FontWeight.w700,
                    color: AppColors.background),
              ),
            ),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: W * .060),
                child: Row(
                  children: [
                    Text(
                      'Don\'t have an account?',
                      style: GoogleFonts.poppins(
                          fontSize: W * .039,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(padding: EdgeInsets.zero),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const SignupPage()));
                      },
                      child: Text('SignUp',
                          style: GoogleFonts.poppins(
                              fontSize: W * .038,
                              fontWeight: FontWeight.w500,
                              color: AppColors.background)),
                    ),
                  ],
                )),
            SizedBox(
              height: Mq.h * .050,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: W * .060),
              child: Text(
                'Username/phone Number',
                style: GoogleFonts.poppins(
                    fontSize: W * .039,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
            ),
            SizedBox(
              height: Mq.h * .010,
            ),
            Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: W * .060,
                ),
                child: SizedBox(
                  height: Mq.h * .058,
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(
                          top: Mq.h * .020,
                          bottom: Mq.h * .020,
                          left: W * .040,
                          right: W * .040),
                      focusColor: AppColors.background,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(W * .020)),
                      hintText: 'Enter here',
                      hintStyle: GoogleFonts.poppins(
                          fontSize: W * .035,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    style: GoogleFonts.poppins(
                        fontSize: W * .032,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                )),
            SizedBox(
              height: Mq.h * .010,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: W * .060),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const ForgotPage()));
                  },
                  child: Text(
                    'Forgot your Password?',
                    style: GoogleFonts.poppins(
                        fontSize: W * .032,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: Mq.h * .030,
            ),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: W * .060),
                child: StyleButton.loginLike(context, () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const PinInputPage()));
                }, 'SEND OTP', AppColors.buttonColor)),
            SizedBox(
              height: Mq.h * .002,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: W * .060),
              child: SizedBox(
                height: Mq.h * .10,
                child: Stack(
                  children: [
                    const Center(child: Divider()),
                    Center(
                      child: Container(
                        width: W * .350,
                        color: Colors.white,
                        child: Center(
                          child: Text(
                            'or Login using',
                            style: GoogleFonts.poppins(
                                fontSize: W * .032,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: W * .30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Container(
                            height: W * .060,
                            width: W * .060,
                            child: Image.asset('assets/google.png')),
                        SizedBox(
                          height: W * .020,
                        ),
                        Text(
                          'Google',
                          style: GoogleFonts.poppins(
                              fontSize: W * .028,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                            height: W * .060,
                            width: W * .060,
                            child: Image.asset('assets/facebook.png')),
                        SizedBox(
                          height: W * .020,
                        ),
                        Text(
                          'Facebook',
                          style: GoogleFonts.poppins(
                              fontSize: W * .028,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        ),
                      ],
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
