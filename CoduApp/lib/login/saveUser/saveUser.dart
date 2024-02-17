import 'package:shared_preferences/shared_preferences.dart';

class SaveUser {
  static Future saveName(String name) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('name', name);
    print(name);
  }

  static Future saveFamilya(String familya) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('familya', familya);
    print(familya);
  }

  static Future saveNumber(String number) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('number', number);
    print(number);
  }

  static Future savePassword(String password) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('password', password);
    print(password);
  }

  static Future getName() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('name');
  }

  static Future getFamilya() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('familya');
  }

  static Future<String?> getNumber() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('number');
  }

  static Future getPassword() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('password');
  }

  static Future logOut() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.clear();
  }

  static Future updateUser(String itemKey, String newValue) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove(itemKey);
    prefs.setString(itemKey, newValue);
    print(itemKey);
    print(newValue);
  }
}
