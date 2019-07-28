import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar'),
        centerTitle: true,
        actions: <Widget>[
          Container(
              padding: EdgeInsets.all(10.0),
              child: CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.lightBlue,
            ),
          ),
          Container(
              padding: EdgeInsets.all(10.0),
              child: CircleAvatar(
              backgroundImage: NetworkImage('https://media.metrolatam.com/2019/05/14/stanlee-ddb0610a62926468be96494d730a7185-600x400.jpg'),
            ),
          ),
        ],
      ),
      body: Center(child: 
        FadeInImage(
          image: NetworkImage('https://cdn1.cnet.com/img/XnOk4NHf8PG7PqJh90ENHGmmkxA=/1600x900/2018/03/23/a1887326-b592-4bbc-9ba9-5b137668ed2d/stan-lee-30.jpg'),
          placeholder: AssetImage('assets/images/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds: 300),
          height: 300.0,
        )
      ),
    );
  }
}
