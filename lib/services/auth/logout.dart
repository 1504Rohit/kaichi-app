import 'package:shared_preferences/shared_preferences.dart';

class LogOut {
  Future logOut() async {
    // Obtain shared preferences.
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    await prefs.setString('createdOn', '');
    await prefs.setString('activeStatus', '0');
    await prefs.setString('_id', '');
    await prefs.setString('email', '');
    await prefs.setString('name', '');
    await prefs.setString('phone', '');
    await prefs.setString('imagePath', '');
  }
}
