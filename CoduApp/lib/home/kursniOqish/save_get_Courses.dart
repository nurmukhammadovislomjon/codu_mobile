import 'package:shared_preferences/shared_preferences.dart';

class CoursesPrefs {
  static loadCoursesIndex(int index) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    if (index == null) {
      preferences.setInt("index", index);
    } else {
      preferences.remove("index");
      preferences.setInt("index", index);
    }
  }

  static Future<int?> getCoursesIndex() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getInt("index");
  }
}
