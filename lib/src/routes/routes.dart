import 'package:flutter/material.dart';

import 'package:ACP_shared_preferences/src/screens/home/home_screen.dart';
import 'package:ACP_shared_preferences/src/screens/settings/settings_screen.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (_) => HomeScreen(),
    'settings': (_) => SettingsScreen(),
  };
}
