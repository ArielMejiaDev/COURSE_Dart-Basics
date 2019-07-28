import 'package:componentes/src/providers/menu_provider.dart';
import 'package:componentes/src/utils/icon_string_util.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
        centerTitle: true,
      ),
      body: _list(),
    );
  }

  //Method to call a future from provider
  //-------------------------------------
  
  Widget _list() {

    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _listItems(snapshot.data, context),
        );
      },
    );

  }

  //Method to print a listTile into the ListView
  //--------------------------------------------
  List<Widget> _listItems(List<dynamic> data,BuildContext context) {
      return data.map((item){
        return Column(
          children: <Widget>[
            ListTile(
              leading: getIcon(item['icon']),
              title: Text(item['texto']),
              subtitle: Text('Subtitle'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: (){
                Navigator.pushNamed(context, item['ruta']);
              },
            ),
          ],
        );
      }).toList();
  }

}