import 'package:shared_preferences/shared_preferences.dart';

class UserPreferences {
  static final UserPreferences _intance = new UserPreferences._internal();

  factory UserPreferences() {
    return _intance;
  }

  UserPreferences._internal();

  late SharedPreferences _prefs;

  initPrefs() async {
    this._prefs = await SharedPreferences.getInstance();
  }

  // Getters and setters of properties

  get gen {
    return this._prefs.getInt('gen') ?? 1;
  }

  set gen(dynamic value) {
    this._prefs.setInt('gen', value);
  }

  get color {
    return this._prefs.getBool('color') ?? false;
  }

  set color(dynamic value) {
    this._prefs.setBool('color', value);
  }

  get name {
    return this._prefs.getString('name') ?? '';
  }

  set name(dynamic value) {
    this._prefs.setString('name', value);
  }
}
