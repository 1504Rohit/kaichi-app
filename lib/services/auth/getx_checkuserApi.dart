import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:kaichi_user/config/api_url.dart';
import 'package:kaichi_user/utils/toast/flutter_toast.dart';

class CheckUserApi extends GetxController {
  Future<bool> isUserExist(String phone, String authType) async {
    var headers = {
      'Content-Type': 'application/json',
    };

    var request = await http.Request(
        'POST', Uri.parse(ApiUrl.BaseUrl + ApiUrl.checkUser));

    request.body = jsonEncode({"phone": phone, "authType": 3});
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();
    String result = await response.stream.bytesToString();
    var finalResponse = jsonDecode(result);

    print(finalResponse);

    if (response.statusCode == 201) {
      if (finalResponse["error"]) {
        CustToast.custToast(finalResponse["message"][0]);
      }
      if (!finalResponse["error"]) {
        CustToast.custToast(
            finalResponse["message"][0] + '. Please SignUp First!');
      }
      return finalResponse["error"];
    } else {
      CustToast.custToast(
          "Something Went Wrong Please Check Your Connection...");
    }

    return false;
  }
}
