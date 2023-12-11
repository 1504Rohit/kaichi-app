import 'package:flutter/material.dart';
import 'package:kaichi_user/style/app_colors/app_colors.dart';

class DotIndicator {
  Widget indicator(int pageCount) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 8,
          width: 8,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: pageCount == 0
                  ? AppColors.indicatorActive
                  : AppColors.indicatorInactive),
        ),
        const SizedBox(
          width: 3,
        ),
        Container(
          height: 8,
          width: 8,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: pageCount == 1
                  ? AppColors.indicatorActive
                  : AppColors.indicatorInactive),
        ),
        const SizedBox(
          width: 3,
        ),
        Container(
          height: 8,
          width: 8,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: pageCount == 2
                  ? AppColors.indicatorActive
                  : AppColors.indicatorInactive),
        ),
        const SizedBox(
          width: 3,
        ),
        Container(
          height: 8,
          width: 8,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: pageCount == 3
                  ? AppColors.indicatorActive
                  : AppColors.indicatorInactive),
        )
      ],
    );
  }
}
