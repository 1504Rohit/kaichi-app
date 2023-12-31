import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kaichi_user/style/app_colors/app_colors.dart';
import 'package:kaichi_user/utils/constants/constants.dart';

class StyleButton {
  static Widget loginLike(
      BuildContext context, VoidCallback onClicked, String name, Color color) {
    double W = Mq.w;
    return ElevatedButton(
      style: ButtonStyle(
          minimumSize:
              MaterialStateProperty.all(Size(double.infinity, Mq.h * .058)),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(W * .020),
          )),
          backgroundColor: MaterialStateProperty.all(color)),
      onPressed: () {
        onClicked();
        // Navigator.push(context,
        //     MaterialPageRoute(builder: (context) => const LoginScreen()));
      },
      child: Text(
        name,
        style: GoogleFonts.poppins(
            fontSize: W * .045,
            fontWeight: FontWeight.w600,
            color: Colors.black),
      ),
    );
  }

  static Widget loginLikeOutlineBlack(
    BuildContext context,
    VoidCallback onClicked,
    String name,
  ) {
    double W = Mq.w;
    return ElevatedButton(
      style: ButtonStyle(
          minimumSize:
              MaterialStateProperty.all(Size(double.infinity, Mq.h * .058)),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(W * .020),
              side: BorderSide(color: Colors.black))),
          backgroundColor: MaterialStateProperty.all(AppColors.White)),
      onPressed: () {
        onClicked();
      },
      child: Center(
        child: Text(
          name,
          style: GoogleFonts.poppins(
              fontSize: W * .045,
              fontWeight: FontWeight.w600,
              color: Colors.black),
        ),
      ),
    );
  }

  static Widget loginLikeOutline(
      BuildContext context, VoidCallback onClicked, String name, Color color) {
    double W = Mq.w;
    return ElevatedButton(
      style: ButtonStyle(
          minimumSize:
              MaterialStateProperty.all(Size(double.infinity, Mq.h * .058)),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(W * .020),
              side: BorderSide(color: Colors.white))),
          backgroundColor: MaterialStateProperty.all(color)),
      onPressed: () {
        onClicked();
      },
      child: Center(
        child: Text(
          name,
          style: GoogleFonts.poppins(
              fontSize: W * .045,
              fontWeight: FontWeight.w600,
              color: Colors.white),
        ),
      ),
    );
  }

  static Widget button(String title, Color color) {
    double W = Mq.w;
    return Container(
      height: Mq.h * .031,
      width: W * .370,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(W * .024),
        color: color,
      ),
      child: Center(
        child: Text(
          title,
          style: GoogleFonts.poppins(
              fontSize: W * .034,
              fontWeight: FontWeight.w500,
              color: AppColors.background),
        ),
      ),
    );
  }
}
