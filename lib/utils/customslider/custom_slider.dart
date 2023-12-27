import 'package:flutter/material.dart';
import 'package:kaichi_user/style/app_colors/app_colors.dart';
import 'package:kaichi_user/utils/constants/constants.dart';

class CustomSlider {
  static Widget customSlider(double percentege) {
    double W = Mq.w;
    return Container(
      height: W * .030,
      width: W * .5,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: W * .030,
            width: W * .5 / percentege,
            color: AppColors.buttonColor,
          ),
          Container(
            height: W * .030,
            width: W * .5 - (W * .5 / percentege),
            color: Colors.grey.shade200,
          )
        ],
      ),
    );
  }
}
