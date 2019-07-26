import 'package:flutter/material.dart';

class HomeTemp extends StatelessWidget {
  final avengers = ['Iron-man', 'Captain America', 'Thor', 'Hulk', 'Hawkeye', 'Black-Widow', 'Scarleth Witch', 'QuickSilver', 'War-machine', 'Vision', 'Falcon', 'Winter Soldier', 'Spider-man'];
  final xmen = ['Charles Xavier', 'Cyclops', 'Wolverine', 'Beast', 'Jean Grey', 'Storm', 'NightCrawler', 'Iceman', 'Colosus', 'Gambit', 'Emma Frost', 'Kitty Pride', 'Lucas Bishop', 'Havok'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temp'),
      ),
      body: ListView(
        children: _createAvengersList()
      ),
    );
  }


  List<Widget> _createAvengersList() {
    List<Widget> list = List<Widget>();
    for (String avenger in avengers) {
      list.add( ListTile( 
        leading: Icon(Icons.security),
        title: Text( avenger ),
        subtitle: Text('Avengers'),
        trailing: Icon(Icons.arrow_forward_ios),
        onTap: (){},
      ) );
      list.add( Divider() );
    }
    return list;
  }

  List<Widget> _createXmenList() {
    return xmen.map( ( xman ) {
      return Column( children: <Widget>[
        ListTile( 
          leading: Icon(Icons.whatshot),
          title: Text(xman),
          subtitle: Text('X-men'),
          trailing: Icon(Icons.arrow_forward_ios),
          onTap: (){},
        ),
        Divider(),
      ], );
    }).toList();
  }



}