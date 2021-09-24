import 'package:shared_preferences/shared_preferences.dart';

Future<bool> saveData({String? saveKey, String? saveValue}) async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  final bool value = await prefs.setString(saveKey!, saveValue!);
  if (value == true) {
    return true;
  } else {
    return false;
  }
}

Future<String> readData(String readKey) async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  final String key = readKey;
  final String? value = prefs.getString(key);
  return value!;
}

Future<bool> deleteLocalKey(String key) async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  final String finalKey = key;
  final bool val = await prefs.remove(finalKey);
  return val;
}
