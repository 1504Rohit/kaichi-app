import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kaichi_user/style/app_colors/app_colors.dart';

class StyleButton {
  static Widget loginLike(String name, Color color) {
    return Container(
      height: 48,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(8), color: color),
      child: Center(
        child: Text(
          name,
          style: GoogleFonts.poppins(
              fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black),
        ),
      ),
    );
  }

  static Widget loginLikeOutline(String name, Color color) {
    return Container(
      height: 48,
      decoration: BoxDecoration(
          border: Border.all(color: AppColors.White, width: 1),
          borderRadius: BorderRadius.circular(8),
          color: color),
      child: Center(
        child: Text(
          name,
          style: GoogleFonts.poppins(
              fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white),
        ),
      ),
    );
  }

  static Widget button(String title, Color color) {
    return Container(
      height: 31,
      width: 160,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: color,
      ),
      child: Center(
        child: Text(
          title,
          style: GoogleFonts.poppins(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: AppColors.background),
        ),
      ),
    );
  }
}
