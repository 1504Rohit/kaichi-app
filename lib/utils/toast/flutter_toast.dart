import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:kaichi_user/style/app_colors/app_colors.dart';
import 'package:kaichi_user/utils/constants/constants.dart';

class CustToast {
  static Future<bool?> custToast(String msg) {
    return Fluttertoast.showToast(
        msg: msg,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: AppColors.background,
        textColor: Colors.white,
        fontSize: Mq.w * .032);
  }
}
