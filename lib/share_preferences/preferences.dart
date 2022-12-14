/// Clase para el uso y configuración de las preferencias.
import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  static late SharedPreferences _prefs;
  static bool _isDarkmode = false;

  static Future init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  static bool get isDarkmode => _prefs.getBool('isDarkmode') ?? _isDarkmode;
  static set isDarkmode(bool value) {
    _isDarkmode = value;
    _prefs.setBool('isDarkmode', value);
  }
}
