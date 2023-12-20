import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kaichi_user/style/app_colors/app_colors.dart';
import 'package:kaichi_user/utils/Button/button.dart';
import 'package:kaichi_user/utils/constants/constants.dart';

class ForgotPage extends StatefulWidget {
  const ForgotPage({super.key});

  @override
  State<ForgotPage> createState() => _ForgotPageState();
}

class _ForgotPageState extends State<ForgotPage> {
  @override
  Widget build(BuildContext context) {
    double W = Mq.w;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: W * .060, vertical: W * .060),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Resset Password',
                  style: GoogleFonts.poppins(
                      fontSize: W * .070,
                      fontWeight: FontWeight.w700,
                      color: AppColors.background),
                ),
                SizedBox(
                  height: W * .040,
                ),
                Container(
                  child: Text(
                    'Please enter your email address to request a password reset',
                    style: GoogleFonts.poppins(
                        fontSize: W * .032,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey),
                  ),
                ),
                SizedBox(
                  height: W * .040,
                ),
                SizedBox(
                  height: W * .12,
                  child: Center(
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        focusColor: AppColors.background,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12)),
                        hintText: 'abc@gmail.com',
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
                ),
              ],
            ),
            StyleButton.loginLike('SEND', AppColors.buttonColor)
          ],
        ),
      ),
    );
  }
}
