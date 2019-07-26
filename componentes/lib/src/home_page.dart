import 'package:componentes/src/providers/menu_provider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
      ),
      body: _list(),
    );
  }

  Widget _list() {

    // THIS WAY IS INCORRECT BECAUSE NOT WORK AS ASYNCRONOUS
    // menuProvider.opciones;

    // return ListView(
    //   children: _listItems(),
    // );


    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _listItems(snapshot.data),
        );
      },
    );

  }

  List<Widget> _listItems(List<dynamic> data) {
    
    return data.map((item){
      return Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.account_circle, color: Colors.blue,),
            title: Text("${item['texto'].toString()}"),
            trailing: Icon(Icons.arrow_forward_ios, color: Colors.blue),
            onTap: (){},
          ),
        ],
      );
    }).toList();

    //print(data);
    // for (var opt in data) {
      
    // }

  }

}