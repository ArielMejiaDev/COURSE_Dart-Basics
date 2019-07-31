import 'package:flutter/material.dart';
import 'package:preferencias_usuario/src/shared_preference_data/shared_preference_data.dart';
import 'package:preferencias_usuario/src/widgets/menu.dart';

import 'package:shared_preferences/shared_preferences.dart';


class SettingsPage extends StatefulWidget {
  static final String routeName = 'settings';

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {

  //Props
  //--------------------------------------------------------------------
  final prefs = new SharedPreferenceData();
  bool    _colorSecundario    = true;
  int     _genero             = 1;
  String  _name               = 'John Doe';
  TextEditingController _nameInputController = new TextEditingController();
  //other way to implement TextEditingController TextEditingController _nameInputController;
  @override
  void initState() {
    super.initState();
    _genero = prefs.genero;
    _name = prefs.name;
    _nameInputController.text = _name;
    //_nameInputController.text = prefs.name;
    //other way to assign _name value to a controller _nameController = new TextEditingController(text: _name);

  }

  _setSelectedRadio(int value) {
    prefs.genero = value;
    _genero = value;
    setState(() {});
  }

  _setColorSecundario(bool value) {
    prefs.colorSecundario = value;
    _colorSecundario = value;
    setState(() {});
  }

   _setName(value) {
     prefs.name = value;
     _name = value;
     setState(() {});
   }

  @override
  Widget build(BuildContext context) {
    prefs.ultimaPagina = SettingsPage.routeName;
    return Scaffold(
      appBar: AppBar(
        title: Text('Ajustes'), 
        centerTitle: true,
        backgroundColor: prefs.colorSecundario ? Colors.blue : Colors.pink,
      ),
      drawer: Menu(),
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(5.0),
            child: Text('Settings', style: TextStyle(
              fontSize: 45.0,
              fontWeight: FontWeight.bold
            )),
          ),
          Divider(),
          SwitchListTile(
            value: _colorSecundario,
            title: Text('Color Secundario'),
            onChanged: _setColorSecundario,
          ),
          RadioListTile(
            value: 1,
            title: Text('Masculino'),
            groupValue: _genero,
            onChanged: _setSelectedRadio,
          ),
          RadioListTile(
            value: 2,
            title: Text('Femenino'),
            groupValue: _genero,
            onChanged: _setSelectedRadio,
          ),
          Divider(),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: TextField(
              controller: _nameInputController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
                labelText: 'Name',
                hintText: 'user firstname here',
                suffixIcon: Icon(Icons.person, color: Colors.blue)
              ),
              onChanged: _setName,
            ),
          ),
        ],
      ),
    );
  }

}