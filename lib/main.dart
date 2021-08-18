import 'package:ACP_shared_preferences/src/core/utils/shared-prefs/shared-prefs.dart';
import 'package:flutter/material.dart';
import 'package:ACP_shared_preferences/src/app.dart';

void main() async {
//  Waiting to init prefs reference
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = new UserPreferences();
  await prefs.initPrefs();

  runApp(MyApp());
}
