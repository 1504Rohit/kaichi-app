import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kaichi_user/style/app_colors/app_colors.dart';
import 'package:kaichi_user/utils/Button/button.dart';
import 'package:kaichi_user/utils/constants/constants.dart';
import 'package:kaichi_user/view/authentication/forgotpassword_page.dart';
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: W * .436,
            color: AppColors.background,
            child: Center(
              child: Container(
                  height: W * .206,
                  width: W * .206,
                  child: Image.asset('assets/kainchi (2)-01 1.png')),
            ),
          ),
          SizedBox(
            height: W * .040,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: W * .060),
            child: Text(
              'Welcome Back!',
              style: GoogleFonts.poppins(
                  fontSize: W * .064,
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
                        fontSize: W * .030,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => const SignupPage()));
                    },
                    child: Text('SignUp',
                        style: GoogleFonts.poppins(
                            fontSize: W * .030,
                            fontWeight: FontWeight.w500,
                            color: AppColors.background)),
                  ),
                ],
              )),
          SizedBox(
            height: W * .060,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: W * .060),
            child: Text(
              'Username/phone Number',
              style: GoogleFonts.poppins(
                  fontSize: W * .032,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
          ),
          Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: W * .060, vertical: W * .020),
              child: SizedBox(
                height: W * .12,
                child: Center(
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      focusColor: AppColors.background,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12)),
                      hintText: 'Enter here',
                      hintStyle: GoogleFonts.poppins(
                          fontSize: W * .032,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    style: GoogleFonts.poppins(
                        fontSize: W * .032,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                ),
              )),
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
            height: W * .040,
          ),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: W * .060),
              child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const BottomNavigation()));
                  },
                  child: StyleButton.loginLike(
                      'SEND OTP', AppColors.buttonColor))),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: W * .060),
            child: SizedBox(
              height: W * .20,
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
    );
  }
}
