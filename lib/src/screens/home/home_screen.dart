import 'package:flutter/material.dart';
import 'package:ACP_shared_preferences/src/core/widgets/acp-menu-drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Preferencias de usuario'),
      ),
      drawer: ACPDrawer(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Color secundario'),
          Divider(),
          Text('Género'),
          Divider(),
          Text('Nombres de usuarios'),
          Divider()
        ],
      ),
    );
  }
}
