import 'dart:convert';
import 'dart:ffi';
import 'package:kaichi_user/model/getuser_model.dart';
import 'package:kaichi_user/services/auth/getx_usertoken.dart';
import 'package:kaichi_user/utils/toast/flutter_toast.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:get/get.dart';
import 'package:kaichi_user/config/api_url.dart';
import 'package:kaichi_user/services/auth/getx_loginApi.dart';
import 'package:kaichi_user/services/auth/getx_signupApi.dart';
import 'package:http/http.dart' as http;

class GetUser extends GetxController {
  LoginApi loginApi = Get.put(LoginApi());
  SignupApi signupApi = Get.put(SignupApi());

  late User user;

  Future getUserApi() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    var headers = {
      'Authorization': 'Bearer${UserPreferences.token}',
    };

    var request = await http.Request('POST',
        Uri.parse(ApiUrl.BaseUrl + ApiUrl.getUser + UserPreferences.id));

    request.headers.addAll(headers);
    http.StreamedResponse response = await request.send();
    String result = await response.stream.bytesToString();

    var finalResponse = jsonDecode(result);

    try {
      if (response.statusCode == 201) {
        print(finalResponse["data"]);
        user = User.fromJson(finalResponse);
        await prefs.setString('createdOn', user.data.createdOn.toString());
        await prefs.setString(
            'activeStatus', user.data.activeStatus.toString());
        await prefs.setString('_id', user.data.id);
        await prefs.setString('email', user.data.email);
        await prefs.setString('name', user.data.name);
        await prefs.setString('phone', user.data.phone.toString());
        await prefs.setString('imagePath', '');
      } else {
        CustToast.custToast(finalResponse["message"]);
      }
    } catch (e) {
      CustToast.custToast(e.toString());
    }
  }
}
