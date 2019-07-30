import 'package:flutter/material.dart';
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
  bool    _colorSecundario    = true;
  int     _genero             = 1;
  String  _name               = 'John Doe';
  TextEditingController _nameInputController = new TextEditingController();
  //other way to implement TextEditingController TextEditingController _nameInputController;
  @override
  void initState() {
    super.initState();
    //get preference to set a value
    _loadPreferences();
    _nameInputController.text = _name;
    //other way to assign _name value to a controller _nameController = new TextEditingController(text: _name);

  }

    _loadPreferences() async{
      SharedPreferences prefs = await SharedPreferences.getInstance();
      _genero = prefs.getInt('genero');
      setState(() {});
    }

  _setSelectedRadio(int value) async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt('genero', value);
    _genero = value;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ajustes'), centerTitle: true,),
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
            onChanged: (value){
              setState(() {
               _colorSecundario = value; 
              });
            },
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
              onChanged: (value){},
            ),
          ),
        ],
      ),
    );
  }

}