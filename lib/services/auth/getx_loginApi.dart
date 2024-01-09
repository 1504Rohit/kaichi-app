import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:kaichi_user/config/api_url.dart';
import 'package:kaichi_user/model/getuser_model.dart';
import 'package:kaichi_user/services/auth/getx_usertoken.dart';
import 'package:kaichi_user/utils/toast/flutter_toast.dart';
import 'package:kaichi_user/view/bottom_navigation.dart';

class LoginApi extends GetxController {
  RxBool isLoading = false.obs;
  late User user;

  Future loginApi(String otp, String phone, BuildContext context) async {
    var headers = {
      'Content-Type': 'application/json',
    };

    var request = await http.Request(
        'POST', Uri.parse(ApiUrl.BaseUrl + ApiUrl.login + otp));
    request.body = json.encode({"phone": phone, "authType": 3});
    request.headers.addAll(headers);
    http.StreamedResponse response = await request.send();
    String result = await response.stream.bytesToString();

    var finalResponse = jsonDecode(result);

    if (response.statusCode == 201) {
      if (finalResponse["error"]) {
        CustToast.custToast(finalResponse["message"][0]);
      } else {
        CustToast.custToast(finalResponse["message"][0]);
        user = User.fromJson(finalResponse);
        print(finalResponse["data"]["_id"]);

        UserPreferences.id = finalResponse["data"]['_id'];
        UserPreferences.token = finalResponse["token"];
        // Navigator.pushReplacement(context,
        //         MaterialPageRoute(builder: (_) => const BottomNavigation()))
        //     .then((value) async {});
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (_) => const BottomNavigation()),
            (route) => false);
      }
    } else {
      CustToast.custToast('Something Went Wrong');
    }
  }
}
