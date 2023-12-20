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

  static Widget dots(int n, int l) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (int i = 0; i < n; i++)
          Container(
            margin: const EdgeInsets.only(left: 8),
            height: i == l ? 11 : 7,
            width: i == l ? 11 : 7,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: i == l
                  ? AppColors.background
                  : const Color.fromRGBO(178, 184, 190, 1),
            ),
          )
      ],
    );
  }
}
