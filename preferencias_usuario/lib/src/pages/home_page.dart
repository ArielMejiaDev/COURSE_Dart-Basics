import 'package:flutter/material.dart';
import 'package:preferencias_usuario/src/shared_preference_data/shared_preference_data.dart';
import 'package:preferencias_usuario/src/widgets/menu.dart';

class HomePage extends StatelessWidget {

  static final String routeName = 'home';

  final prefs = new SharedPreferenceData();

  @override
  Widget build(BuildContext context) {
    prefs.ultimaPagina = HomePage.routeName;
    return Scaffold(
      appBar: AppBar(
        title: Text('Preferencias de usuario'),
        centerTitle: true,
        backgroundColor: prefs.colorSecundario ? Colors.blue : Colors.pink,
      ),
      drawer: Menu(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Color Secundario: ${prefs.colorSecundario}'),
          Divider(),
          Text('Genero: ${prefs.genero}'),
          Divider(),
          Text('Nombre usuario: ${prefs.name}'),
          Divider()
        ],
      ),
    );
  }

}