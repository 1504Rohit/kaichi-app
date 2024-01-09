import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:kaichi_user/config/api_url.dart';
import 'package:kaichi_user/services/auth/getx_usertoken.dart';
import 'package:kaichi_user/utils/toast/flutter_toast.dart';
import 'package:kaichi_user/view/bottom_navigation.dart';

class SignupApi extends GetxController {
  RxBool isLoading = false.obs;

  Future signUpApi(String email, String name, String phone, String otp,
      BuildContext context) async {
    var headers = {
      'Content-Type': 'application/json',
    };
    var request = await http.Request(
        'POST', Uri.parse(ApiUrl.BaseUrl + ApiUrl.signUp + otp));

    request.body = json.encode({
      "type": 2,
      "name": name,
      "phone": phone,
      "authType": 3,
      "email": email
    });

    request.headers.addAll(headers);
    http.StreamedResponse response = await request.send();
    String result = await response.stream.bytesToString();
    var finalResponse = jsonDecode(result);

    if (response.statusCode == 201) {
      if (finalResponse["error"]) {
        CustToast.custToast(finalResponse["message"][0]);
      } else {
        CustToast.custToast(finalResponse["message"][0]);
        UserPreferences.id = finalResponse["data"]['_id'];
        UserPreferences.token = finalResponse["token"];
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
