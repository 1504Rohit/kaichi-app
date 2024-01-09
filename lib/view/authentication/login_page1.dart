import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kaichi_user/services/auth/getx_checkuserApi.dart';
import 'package:kaichi_user/services/auth/getx_sendOtpApi.dart';
import 'package:kaichi_user/style/app_colors/app_colors.dart';
import 'package:kaichi_user/utils/Button/button.dart';
import 'package:kaichi_user/utils/constants/constants.dart';
import 'package:kaichi_user/view/authentication/forgotpassword_page.dart';
import 'package:kaichi_user/view/authentication/pininput_page.dart';
import 'package:kaichi_user/view/authentication/signup1_page.dart';
import 'package:kaichi_user/view/authentication/signup_page.dart';
import 'package:kaichi_user/view/bottom_navigation.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  CheckUserApi checkUserApi = Get.put(CheckUserApi());
  SendOtpApi OtpApi = Get.put(SendOtpApi());
  final _formKey = new GlobalKey<FormState>();
  TextEditingController _controller = TextEditingController();
  bool _isLoading = false;
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
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => Signup1Page()));
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
            // phone number form field

            Form(
                key: _formKey,
                child: Column(
                  children: [
                    Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: W * .060,
                        ),
                        child: SizedBox(
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            controller: _controller,
                            validator: (value) => value!.isEmpty
                                ? 'Field Cannot be Empty'
                                : value.length != 10
                                    ? 'Please Enter Atleast 10 Character'
                                    : null,
                            maxLength: 10,
                            decoration: InputDecoration(
                              counterText: "",
                              errorStyle: GoogleFonts.poppins(
                                  fontSize: W * .024,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.red),
                              focusColor: AppColors.background,
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: W * .040, vertical: Mq.h * .017),
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.circular(W * .020)),
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
                      height: Mq.h * .030,
                    ),
                    // Align(
                    //   alignment: Alignment.centerRight,
                    //   child: Padding(
                    //     padding: EdgeInsets.symmetric(horizontal: W * .060),
                    //     child: InkWell(
                    //       onTap: () {
                    //         Navigator.push(
                    //             context,
                    //             MaterialPageRoute(
                    //                 builder: (_) => const ForgotPage()));
                    //       },
                    //       child: Text(
                    //         'Forgot your Password?',
                    //         style: GoogleFonts.poppins(
                    //             fontSize: W * .032,
                    //             fontWeight: FontWeight.w500,
                    //             color: Colors.grey),
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    // SizedBox(
                    //   height: Mq.h * .030,
                    // ),
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: W * .060),
                        child: Obx(() => StyleButton.loginLike(context,
                                () async {
                              // Navigator.push(context,
                              //     MaterialPageRoute(builder: (_) => const PinInputPage()));

                              if (_formKey.currentState!.validate()) {
                                OtpApi.isLoading.value = true;
                                var res = await checkUserApi.isUserExist(
                                    _controller.text.toString(), '3');
                                print(res);
                                if (res == false) {
                                  OtpApi.isLoading.value = false;
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (_) => SignupPage(
                                                phone:
                                                    _controller.text.toString(),
                                              ))).then((value) {
                                    _controller.clear();
                                  });
                                }
                                if (res == true) {
                                  OtpApi.sendOtpApi(_controller.text.toString())
                                      .then((value) {
                                    OtpApi.isLoading.value = false;
                                    // _controller.clear();
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (_) => PinInputPage(
                                                  phone: _controller.text
                                                      .toString(),
                                                ))).then((value) {
                                      _controller.clear();
                                    });
                                  });
                                }
                              }
                            }, 'SEND OTP', AppColors.buttonColor,
                                OtpApi.isLoading.value))),
                  ],
                )),
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
