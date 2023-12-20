import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kaichi_user/style/app_colors/app_colors.dart';
import 'package:kaichi_user/utils/Button/button.dart';
import 'package:kaichi_user/utils/constants/constants.dart';
import 'package:kaichi_user/utils/custom%20card/custom_card.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  @override
  Widget build(BuildContext context) {
    double W = Mq.w;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(249, 249, 249, 1),
      appBar: AppBar(
        toolbarHeight: W * .198,
        centerTitle: true,
        backgroundColor: AppColors.background,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
          color: AppColors.White,
        ),
        title: Text(
          'My Profile',
          style: GoogleFonts.poppins(
              fontSize: W * .048,
              fontWeight: FontWeight.w600,
              color: AppColors.White),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: W * .060, vertical: W * .040),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: W * .240,
                  width: W * .240,
                  child: Stack(
                    children: [
                      Container(
                        height: W * .240,
                        width: W * .240,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                              filterQuality: FilterQuality.high,
                              fit: BoxFit.cover,
                              image: AssetImage('assets/Profile Image.png')),
                          shape: BoxShape.circle,
                          border: Border.all(
                              color: AppColors.buttonColor, width: 1),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          height: W * .064,
                          width: W * .064,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                                filterQuality: FilterQuality.high,
                                image: AssetImage('assets/edit.png')),
                            color: AppColors.buttonColor,
                            shape: BoxShape.circle,
                            border:
                                Border.all(color: AppColors.White, width: 3),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: W * .080,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Personal Information',
                    style: GoogleFonts.poppins(
                        fontSize: W * .048,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                ),
                SizedBox(
                  height: W * .040,
                ),
                CustomCard.customCard3('Full Name', 'John Doe'),
                SizedBox(
                  height: W * .040,
                ),
                CustomCard.customCard3('Email Id', 'johndoe@gmail.com'),
                SizedBox(
                  height: W * .040,
                ),
                CustomCard.customCard3('Phone Number', '+91 1234567890')
              ],
            ),
            StyleButton.loginLike('EDIT PROFILE', AppColors.buttonColor)
          ],
        ),
      ),
    );
  }
}
