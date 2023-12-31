import 'dart:ffi';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:image_picker/image_picker.dart';
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

  String _imagepath = '';
  final ImagePicker imgpicker = ImagePicker();
  Future getImage() async {
    try {
      var pickedFile = await imgpicker.pickImage(source: ImageSource.gallery);
      if (pickedFile != null) {
        setState(() {
          _imagepath = pickedFile.path;
        });
      } else {
        print("No image is selected.");
      }
    } catch (e) {
      print("error while picking image.");
    }
  }

  @override
  Widget build(BuildContext context) {
    double W = Mq.w;

    return Scaffold(
      backgroundColor: AppColors.White,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: Mq.h * .185,
              width: double.infinity,
              color: AppColors.background,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: W * .060),
                child: SafeArea(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'SignUp',
                        style: GoogleFonts.poppins(
                            fontSize: W * .080,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: Mq.h * .015,
                      ),
                      Row(
                        children: [
                          Text(
                            'Already have an Account?',
                            style: GoogleFonts.poppins(
                                fontSize: W * .035,
                                fontWeight: FontWeight.w600,
                                color: Colors.grey),
                          ),
                          SizedBox(
                            width: W * .010,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => const LoginScreen()));
                            },
                            child: Text('Login',
                                style: GoogleFonts.poppins(
                                    fontSize: W * .035,
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.buttonColor)),
                          ),
                          SizedBox(
                            height: Mq.h * .040,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: Mq.h * .015,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            // profile
            SizedBox(
              height: Mq.h * .020,
            ),
            Container(
              height: Mq.h * .12,
              width: W * .3,
              child: Stack(
                children: [
                  Container(
                    height: Mq.h * .15,
                    width: W * .3,
                    decoration: BoxDecoration(shape: BoxShape.circle),
                    child: _imagepath == ''
                        ? CircleAvatar(
                            backgroundImage: AssetImage('assets/Avatar.png'),
                          )
                        : CircleAvatar(
                            backgroundImage: FileImage(File(_imagepath)),
                          ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: EdgeInsets.only(right: W * .015),
                      child: InkWell(
                        onTap: () {
                          getImage();
                        },
                        child: Container(
                          height: Mq.h * .035,
                          width: W * .070,
                          decoration: BoxDecoration(
                              color: AppColors.background,
                              shape: BoxShape.circle),
                          child: Icon(
                            Icons.edit,
                            size: W * .040,
                            color: Colors.white,
                          ),
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
                      fontSize: W * .038,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: W * .060, vertical: W * .020),
                child: SizedBox(
                  height: Mq.h * .058,
                  child: Center(
                    child: TextFormField(
                      maxLines: 1,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(
                            top: Mq.h * .020,
                            bottom: Mq.h * .020,
                            left: W * .040,
                            right: W * .040),
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
              height: Mq.h * .005,
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: W * .060),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Email Id',
                  style: GoogleFonts.poppins(
                      fontSize: W * .038,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: W * .060, vertical: W * .020),
                child: SizedBox(
                  height: Mq.h * .058,
                  child: Center(
                    child: TextFormField(
                      maxLines: 1,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(
                            top: Mq.h * .020,
                            bottom: Mq.h * .020,
                            left: W * .040,
                            right: W * .040),
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
              height: Mq.h * .005,
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: W * .060),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Phone number',
                  style: GoogleFonts.poppins(
                      fontSize: W * .038,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: W * .060, vertical: W * .020),
                child: SizedBox(
                  height: Mq.h * .058,
                  child: Center(
                    child: TextFormField(
                      maxLines: 1,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(
                            top: Mq.h * .020,
                            bottom: Mq.h * .020,
                            left: W * .040,
                            right: W * .040),
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
              height: Mq.h * .005,
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: W * .060),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Password',
                  style: GoogleFonts.poppins(
                      fontSize: W * .038,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: W * .060, vertical: W * .020),
                child: SizedBox(
                  height: Mq.h * .058,
                  child: Center(
                    child: TextFormField(
                      maxLines: 1,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(
                            top: Mq.h * .020,
                            bottom: Mq.h * .020,
                            left: W * .040,
                            right: W * .040),
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
              height: Mq.h * .005,
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: W * .060),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Confirm Password',
                  style: GoogleFonts.poppins(
                      fontSize: W * .038,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: W * .060, vertical: W * .020),
                child: SizedBox(
                  height: Mq.h * .058,
                  child: Center(
                    child: TextFormField(
                      maxLines: 1,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(
                            top: Mq.h * .020,
                            bottom: Mq.h * .020,
                            left: W * .040,
                            right: W * .040),
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
              padding: EdgeInsets.symmetric(horizontal: W * .026),
              child: Row(
                children: [
                  Obx(() => Checkbox(
                      checkColor: Colors.white,
                      value: signup.isAgree.value,
                      onChanged: (value) {
                        signup.isAgree.value = value!;
                      })),
                  Container(
                    child: Text(
                      'I agree to the Google Terms of Service and Privacy Policy',
                      style: GoogleFonts.poppins(
                          letterSpacing: -0.1,
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
              child: StyleButton.loginLike(
                  context, () {}, 'SIGN UP', AppColors.buttonColor),
            ),
            SizedBox(
              height: W * .040,
            )
          ],
        ),
      ),
    );
  }
}
