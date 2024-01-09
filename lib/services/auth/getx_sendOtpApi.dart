import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:kaichi_user/config/api_url.dart';
import 'package:kaichi_user/utils/toast/flutter_toast.dart';

class SendOtpApi extends GetxController {
  RxBool isLoading = false.obs;

  Future sendOtpApi(String phone) async {
    var headers = {
      'Content-Type': 'application/json',
    };
    var request =
        http.Request('GET', Uri.parse(ApiUrl.BaseUrl + ApiUrl.sendOtp + phone));
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();
    String result = await response.stream.bytesToString();
    var finalResponse = jsonDecode(result);

    if (response.statusCode == 200) {
      print(finalResponse);
      CustToast.custToast(finalResponse["message"][0]);
    } else {
      CustToast.custToast(response.reasonPhrase.toString());
    }

    return;
  }
}
