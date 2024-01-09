import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kaichi_user/services/auth/getx_sendOtpApi.dart';
import 'package:kaichi_user/style/app_colors/app_colors.dart';
import 'package:kaichi_user/utils/Button/button.dart';
import 'package:kaichi_user/utils/constants/constants.dart';
import 'package:kaichi_user/utils/toast/flutter_toast.dart';
import 'package:kaichi_user/view/authentication/login_page1.dart';
import 'package:kaichi_user/view/authentication/pinput2_page.dart';
import 'package:kaichi_user/view_model/getx_signup.dart';

class Signup1Page extends StatefulWidget {
  const Signup1Page({super.key});

  @override
  State<Signup1Page> createState() => _Signup1PageState();
}

class _Signup1PageState extends State<Signup1Page> {
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
    SendOtpApi otpApi = Get.put(SendOtpApi());
    double W = Mq.w;
    final _formKey = new GlobalKey<FormState>();
    TextEditingController name = TextEditingController();
    TextEditingController Email = TextEditingController();
    TextEditingController phoneNum = TextEditingController();
    return Scaffold(
      backgroundColor: AppColors.White,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(Mq.h * .185),
        child: Container(
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
      ),
      body: SingleChildScrollView(
          child: Form(
        key: _formKey,
        child: Column(
          children: [
            SizedBox(
              height: Mq.h * .020,
            ),
            // Container(
            //   height: Mq.h * .12,
            //   width: W * .3,
            //   child: Stack(
            //     children: [
            //       Container(
            //         height: Mq.h * .15,
            //         width: W * .3,
            //         decoration: BoxDecoration(shape: BoxShape.circle),
            //         child: _imagepath == ''
            //             ? Image.asset(
            //                 'assets/Avatar.png',
            //                 fit: BoxFit.contain,
            //               )
            //             : CircleAvatar(
            //                 backgroundImage: FileImage(File(_imagepath)),
            //               ),
            //       ),
            //       Align(
            //         alignment: Alignment.bottomRight,
            //         child: Padding(
            //           padding: EdgeInsets.only(right: W * .015),
            //           child: InkWell(
            //             onTap: () {
            //               getImage();
            //             },
            //             child: Container(
            //               height: Mq.h * .035,
            //               width: W * .070,
            //               decoration: BoxDecoration(
            //                   color: AppColors.background,
            //                   shape: BoxShape.circle),
            //               child: Icon(
            //                 Icons.edit,
            //                 size: W * .040,
            //                 color: Colors.white,
            //               ),
            //             ),
            //           ),
            //         ),
            //       )
            //     ],
            //   ),
            // ),
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
                  child: TextFormField(
                    maxLines: 1,
                    controller: name,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) =>
                        value!.isEmpty ? 'Field Cannot be Empty' : null,
                    selectionHeightStyle: BoxHeightStyle.max,
                    decoration: InputDecoration(
                      focusColor: AppColors.background,
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: W * .040, vertical: Mq.h * .017),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(W * .020)),
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
                  child: Center(
                    child: TextFormField(
                      maxLines: 1,
                      controller: Email,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (value) => value!.isEmpty
                          ? 'Field Cannot be Empty'
                          : !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                  .hasMatch(value.toString())
                              ? 'Please enter Valid Email'
                              : null,
                      decoration: InputDecoration(
                        focusColor: AppColors.background,
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: W * .040, vertical: Mq.h * .017),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(W * .020)),
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
                  child: Center(
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      maxLength: 10,
                      controller: phoneNum,
                      validator: (value) => value!.isEmpty
                          ? 'Field Cannot be Empty'
                          : value.length != 10
                              ? 'Please Enter Atleast 10 Character'
                              : null,
                      maxLines: 1,
                      decoration: InputDecoration(
                        counterText: "",
                        focusColor: AppColors.background,
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: W * .040, vertical: Mq.h * .017),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(W * .020)),
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
            // SizedBox(
            //   height: Mq.h * .005,
            // ),
            // Padding(
            //   padding: EdgeInsets.symmetric(horizontal: W * .060),
            //   child: Align(
            //     alignment: Alignment.centerLeft,
            //     child: Text(
            //       'Password',
            //       style: GoogleFonts.poppins(
            //           fontSize: W * .038,
            //           fontWeight: FontWeight.w500,
            //           color: Colors.black),
            //     ),
            //   ),
            // ),
            // Padding(
            //     padding: EdgeInsets.symmetric(
            //         horizontal: W * .060, vertical: W * .020),
            //     child: SizedBox(
            //       child: Center(
            //         child: TextField(
            //           maxLines: 1,
            //           obscureText: true,
            //           decoration: InputDecoration(
            //             focusColor: AppColors.background,
            //             contentPadding: EdgeInsets.symmetric(
            //                 horizontal: W * .040, vertical: Mq.h * .017),
            //             border: OutlineInputBorder(
            //                 borderRadius: BorderRadius.circular(W * .020)),
            //             hintText: 'Set a password',
            //             hintStyle: GoogleFonts.poppins(
            //                 fontSize: W * .032,
            //                 fontWeight: FontWeight.w500,
            //                 color: Colors.grey),
            //           ),
            //           style: GoogleFonts.poppins(
            //               fontSize: W * .032,
            //               fontWeight: FontWeight.w500,
            //               color: Colors.black),
            //         ),
            //       ),
            //     )),
            // SizedBox(
            //   height: Mq.h * .005,
            // ),
            // Padding(
            //   padding: EdgeInsets.symmetric(horizontal: W * .060),
            //   child: Align(
            //     alignment: Alignment.centerLeft,
            //     child: Text(
            //       'Confirm Password',
            //       style: GoogleFonts.poppins(
            //           fontSize: W * .038,
            //           fontWeight: FontWeight.w500,
            //           color: Colors.black),
            //     ),
            //   ),
            // ),
            // Padding(
            //     padding: EdgeInsets.symmetric(
            //         horizontal: W * .060, vertical: W * .020),
            //     child: SizedBox(
            //       child: Center(
            //         child: TextField(
            //           maxLines: 1,
            //           obscureText: true,
            //           decoration: InputDecoration(
            //             focusColor: AppColors.background,
            //             contentPadding: EdgeInsets.symmetric(
            //                 horizontal: W * .040, vertical: Mq.h * .017),
            //             border: OutlineInputBorder(
            //                 borderRadius: BorderRadius.circular(W * .020)),
            //             hintText: 'Set a confirm password',
            //             hintStyle: GoogleFonts.poppins(
            //                 fontSize: W * .032,
            //                 fontWeight: FontWeight.w500,
            //                 color: Colors.grey),
            //           ),
            //           style: GoogleFonts.poppins(
            //               fontSize: W * .032,
            //               fontWeight: FontWeight.w500,
            //               color: Colors.black),
            //         ),
            //       ),
            //     )),
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
                child: Obx(
                  () => StyleButton.loginLike(context, () {
                    if (_formKey.currentState!.validate()) {
                      otpApi.isLoading.value = true;
                      if (signup.isAgree.value) {
                        otpApi
                            .sendOtpApi(phoneNum.text.toString())
                            .then((value) {
                          otpApi.isLoading.value = false;
                          Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => PinPut2Page(
                                          email: Email.text.toString(),
                                          name: name.text.toString(),
                                          phoneNo: phoneNum.text.toString())))
                              .then((value) {
                            Email.clear();
                            name.clear();
                            phoneNum.clear();
                            signup.isAgree.value = false;
                          });
                        });
                      } else {
                        otpApi.isLoading.value = false;
                        CustToast.custToast(
                            'Please agree the Terms of Service then proceed.');
                      }
                    }
                  }, 'SIGN UP', AppColors.buttonColor, otpApi.isLoading.value),
                )),
            SizedBox(
              height: W * .040,
            )
          ],
        ),
      )),
    );
  }
}
