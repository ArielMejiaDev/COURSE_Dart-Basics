import 'package:flutter/material.dart';
import 'package:preferencias_usuario/src/widgets/menu.dart';

class HomePage extends StatelessWidget {

  static final String routeName = 'home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Preferencias de usuario'),
        centerTitle: true,
      ),
      drawer: Menu(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Color Secundario: '),
          Divider(),
          Text('Genero: '),
          Divider(),
          Text('Nombre usuario: '),
          Divider()
        ],
      ),
    );
  }

}