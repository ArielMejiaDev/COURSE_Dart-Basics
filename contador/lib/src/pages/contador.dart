import 'package:flutter/material.dart';

class Contador extends StatefulWidget {
  @override
  _ContadorState createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {
  //variable para guardar los estilos
  final _estiloTexto = TextStyle(fontSize: 25.0);
  int _conteo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Contador'
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Numero de taps', style: _estiloTexto,
            ),
            Text(
              _conteo.toString(), style: _estiloTexto,
            ),
          ],
        )
      ),
      floatingActionButton: _createBtns(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }

  Widget _createBtns()
  {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30,),
        FloatingActionButton(
          onPressed: () => setContador(op: 'reset'),
          child: Icon(Icons.exposure_zero),
        ),
        Expanded(child: SizedBox(width: 0.0,),),
        FloatingActionButton(
          onPressed: () => setContador(op: 'resta'),
          child: Icon(Icons.remove),
        ),
        SizedBox(width: 5.0,),
        FloatingActionButton(
          onPressed: () => setContador(op: 'suma'),
          child: Icon(Icons.add),
        ),

      ],
    );
  }

  void setContador({String op}){
    if (op == 'suma') {
      setState(() => _conteo++);  
    }
    if (op == 'resta') {
      setState(() => _conteo--);  
    }
    if (op == 'reset') {
      setState(() => _conteo = 0);
    }
  }

}