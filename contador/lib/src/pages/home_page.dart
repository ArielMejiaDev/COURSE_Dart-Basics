import 'package:flutter/material.dart';

//control + space
//para mostrar todos los posibles widgets
//control + .
//para abrir el menu contextual de ayuda de flutter

class HomePage extends StatelessWidget {

  //variable para guardar los estilos
  final estiloTexto = TextStyle(fontSize: 25.0);
  final conteo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Titulo'
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Numero de taps', style: estiloTexto,
            ),
            Text(
              conteo.toString(), style: estiloTexto,
            ),
          ],
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Boton presionado!');
          conteo++;
        },
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}