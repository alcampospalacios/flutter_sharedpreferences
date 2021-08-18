import 'package:ACP_shared_preferences/src/core/utils/shared-prefs/shared-prefs.dart';
import 'package:flutter/material.dart';
import 'package:ACP_shared_preferences/src/core/widgets/acp-menu-drawer.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  late bool _secondaryColor;
  late int _gen;
  late String _name;

  late TextEditingController _textEditingController;
  final prefs = new UserPreferences();

  @override
  void initState() {
    super.initState();

    this._gen = prefs.gen;
    this._name = prefs.name;
    this._secondaryColor = prefs.color;
    this._textEditingController = new TextEditingController(text: prefs.name);
  }

  _setSelectedRadio(int? value) {
    prefs.gen = value;
    setState(() {
      _gen = value!;
    });
  }

  _setSelectedColor(bool? value) {
    prefs.color = value;
    setState(() {
      this._secondaryColor = value!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: (prefs.color) ? Colors.teal : Colors.blue,
          title: Text('Configuraciones'),
        ),
        drawer: ACPDrawer(),
        body: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(15),
              child: Text(
                'Configuraciones',
                style: TextStyle(color: Colors.black54, fontSize: 48.0),
              ),
            ),
            SwitchListTile(
                value: this._secondaryColor,
                title: Text('Color secundario'),
                onChanged: _setSelectedColor),
            RadioListTile(
                value: 1,
                groupValue: this._gen,
                title: Text('Masculino'),
                onChanged: _setSelectedRadio),
            RadioListTile(
                value: 2,
                groupValue: this._gen,
                title: Text('Femenino'),
                onChanged: _setSelectedRadio),
            Divider(),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: TextField(
                controller: this._textEditingController,
                decoration: InputDecoration(labelText: 'Nombre'),
                onChanged: (value) {
                  prefs.name = value;
                },
              ),
            )
          ],
        ));
  }
}
