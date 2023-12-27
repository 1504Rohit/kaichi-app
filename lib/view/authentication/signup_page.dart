import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kaichi_user/style/app_colors/app_colors.dart';
import 'package:kaichi_user/utils/Button/button.dart';
import 'package:kaichi_user/utils/constants/constants.dart';
import 'package:kaichi_user/view/authentication/login_page1.dart';
import 'package:kaichi_user/view_model/getx_signup.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  SignUp signup = Get.put(SignUp());
  @override
  Widget build(BuildContext context) {
    double W = Mq.w;
    return Scaffold(
      backgroundColor: AppColors.White,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: W * .416,
              width: double.infinity,
              color: AppColors.background,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: W * .060),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'SignUp',
                      style: GoogleFonts.poppins(
                          fontSize: W * .070,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: W * .020,
                    ),
                    Row(
                      children: [
                        Text(
                          'Already have an account?',
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
                                    builder: (_) => const LoginScreen()));
                          },
                          child: Text('Login',
                              style: GoogleFonts.poppins(
                                  fontSize: W * .030,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.buttonColor)),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: W * .020,
                    ),
                  ],
                ),
              ),
            ),
            // profile
            SizedBox(
              height: W * .040,
            ),
            Container(
              height: W * .2,
              width: W * .2,
              child: Stack(
                children: [
                  Container(
                    height: W * .2,
                    width: W * .2,
                    decoration: BoxDecoration(shape: BoxShape.circle),
                    child: Image.asset('assets/Avatar.png'),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: EdgeInsets.only(right: W * .015),
                      child: Container(
                        height: W * .048,
                        width: W * .048,
                        decoration: BoxDecoration(
                            color: AppColors.background,
                            shape: BoxShape.circle),
                        child: Icon(
                          Icons.edit,
                          size: W * .030,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: W * .040,
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: W * .060),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Name',
                  style: GoogleFonts.poppins(
                      fontSize: W * .032,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: W * .060, vertical: W * .020),
                child: SizedBox(
                  height: W * .12,
                  child: Center(
                    child: TextFormField(
                      maxLines: 1,
                      decoration: InputDecoration(
                        focusColor: AppColors.background,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12)),
                        hintText: 'john Doe',
                        hintStyle: GoogleFonts.poppins(
                            fontSize: W * .032,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey),
                      ),
                      style: GoogleFonts.poppins(
                          fontSize: W * .032,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                  ),
                )),
            SizedBox(
              height: W * .020,
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: W * .060),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Email Id',
                  style: GoogleFonts.poppins(
                      fontSize: W * .032,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: W * .060, vertical: W * .020),
                child: SizedBox(
                  height: W * .12,
                  child: Center(
                    child: TextFormField(
                      maxLines: 1,
                      decoration: InputDecoration(
                        focusColor: AppColors.background,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12)),
                        hintText: 'john@example.com',
                        hintStyle: GoogleFonts.poppins(
                            fontSize: W * .032,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey),
                      ),
                      style: GoogleFonts.poppins(
                          fontSize: W * .032,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                  ),
                )),
            SizedBox(
              height: W * .020,
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: W * .060),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Phone number',
                  style: GoogleFonts.poppins(
                      fontSize: W * .032,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: W * .060, vertical: W * .020),
                child: SizedBox(
                  height: W * .12,
                  child: Center(
                    child: TextFormField(
                      maxLines: 1,
                      decoration: InputDecoration(
                        focusColor: AppColors.background,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12)),
                        hintText: '+91 1234567890',
                        hintStyle: GoogleFonts.poppins(
                            fontSize: W * .032,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey),
                      ),
                      style: GoogleFonts.poppins(
                          fontSize: W * .032,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                  ),
                )),
            SizedBox(
              height: W * .020,
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: W * .060),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Password',
                  style: GoogleFonts.poppins(
                      fontSize: W * .032,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: W * .060, vertical: W * .020),
                child: SizedBox(
                  height: W * .12,
                  child: Center(
                    child: TextFormField(
                      maxLines: 1,
                      decoration: InputDecoration(
                        focusColor: AppColors.background,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12)),
                        hintText: 'Set a password',
                        hintStyle: GoogleFonts.poppins(
                            fontSize: W * .032,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey),
                      ),
                      style: GoogleFonts.poppins(
                          fontSize: W * .032,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                  ),
                )),
            SizedBox(
              height: W * .020,
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: W * .060),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Confirm Password',
                  style: GoogleFonts.poppins(
                      fontSize: W * .032,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: W * .060, vertical: W * .020),
                child: SizedBox(
                  height: W * .12,
                  child: Center(
                    child: TextFormField(
                      maxLines: 1,
                      decoration: InputDecoration(
                        focusColor: AppColors.background,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12)),
                        hintText: 'Set a confirm password',
                        hintStyle: GoogleFonts.poppins(
                            fontSize: W * .032,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey),
                      ),
                      style: GoogleFonts.poppins(
                          fontSize: W * .032,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                  ),
                )),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: W * .040),
              child: Row(
                children: [
                  Obx(() => Checkbox(
                      checkColor: Colors.white,
                      value: signup.isAgree.value,
                      onChanged: (value) {
                        signup.isAgree.value = value!;
                      })),
                  Container(
                    width: W * .650,
                    child: Text(
                      'I agree to the Google Terms of Service and Privacy Policy',
                      style: GoogleFonts.poppins(
                          fontSize: W * .026,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: W * .020,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: W * .060),
              child: StyleButton.loginLike('SIGN UP', AppColors.buttonColor),
            )
          ],
        ),
      ),
    );
  }
}
