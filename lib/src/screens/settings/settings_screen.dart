import 'package:flutter/material.dart';
import 'package:ACP_shared_preferences/src/core/widgets/acp-menu-drawer.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool _secondaryColor = false;
  int _gen = 1;
  String _name = 'alcampos';

  late TextEditingController _textEditingController;

  @override
  void initState() {
    super.initState();

    this._textEditingController = new TextEditingController(text: this._name);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
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
                onChanged: (value) {
                  setState(() {
                    this._secondaryColor = value;
                  });
                }),
            RadioListTile(
                value: 1,
                groupValue: this._gen,
                title: Text('Masculino'),
                onChanged: (value) {
                  setState(() {
                    this._gen = value as int;
                  });
                }),
            RadioListTile(
                value: 2,
                groupValue: this._gen,
                title: Text('Femenino'),
                onChanged: (value) {
                  setState(() {
                    this._gen = value as int;
                  });
                }),
            Divider(),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: TextField(
                controller: this._textEditingController,
                decoration: InputDecoration(labelText: 'Nombre'),
                onChanged: (value) {},
              ),
            )
          ],
        ));
  }
}
