import 'dart:developer';

import 'package:mptmessenger/asset/strings.dart';
import 'package:mptmessenger/model/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesLib {
  Future<void> loadUserIntoSystem(bool isMpt,
      {String? email, String? password}) async {
    var instance = await SharedPreferences.getInstance();
    await instance.clear();
    await instance.setBool("Auth", isMpt);
    email != null ? await instance.setString(emailKey, email) : null;
    password != null ? await instance.setString(passwordKey, password) : null;
  }


  Future<void> signOut() async =>
      await (await SharedPreferences.getInstance()).clear();

  Future<Map<String, dynamic>?> checkIfLoggedIn() async {
    var instance = await SharedPreferences.getInstance();
    if (instance.containsKey(emailKey) && instance.containsKey(passwordKey)) {
      log({
        "Auth": instance.getBool("Auth")!,
        emailKey: instance.getString(emailKey)!,
        passwordKey: instance.getString(passwordKey)!
      }.toString());
      return {
        "Auth": instance.getBool("Auth")!,
        emailKey: instance.getString(emailKey)!,
        passwordKey: instance.getString(passwordKey)!
      };
    } else if (instance.containsKey("Auth")) {
      return {
        "Auth": instance.getBool("Auth")!,
      };
    }
  }
}
