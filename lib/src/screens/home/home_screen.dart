import 'package:ACP_shared_preferences/src/core/utils/shared-prefs/shared-prefs.dart';
import 'package:flutter/material.dart';
import 'package:ACP_shared_preferences/src/core/widgets/acp-menu-drawer.dart';

class HomeScreen extends StatelessWidget {
  final prefs = new UserPreferences();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: (prefs.color) ? Colors.teal : Colors.blue,
        title: Text('Preferencias de usuario'),
      ),
      drawer: ACPDrawer(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Color secundario: ${prefs.color}'),
          Divider(),
          Text('Género: ${prefs.gen}'),
          Divider(),
          Text('Usuario: ${prefs.name}'),
          Divider()
        ],
      ),
    );
  }
}
