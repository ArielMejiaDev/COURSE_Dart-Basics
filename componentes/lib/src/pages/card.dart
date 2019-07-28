import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _cardOfStyleOne(),
          SizedBox(height: 10.0,),
          _cardOfStyleTwo(),
          SizedBox(height: 10.0,),
          _cardOfStyleTwo(),
          SizedBox(height: 10.0,),
          _cardOfStyleTwo(),
          SizedBox(height: 10.0,),
          _cardOfStyleTwo(),
          SizedBox(height: 10.0,),
          _cardOfStyleTwo(),
          SizedBox(height: 10.0,),
          _cardOfStyleTwo(),
          SizedBox(height: 10.0,),

        ],
      ),
    );
  }

  Widget _cardOfStyleOne() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Column(
        children: <Widget>[
          SizedBox(height: 10.0,),
          ListTile(
            leading: Icon(Icons.bookmark_border, color: Colors.blue,),
            title: Text('Card title'),
            subtitle: Column(
              children: <Widget>[
                SizedBox(height: 10.0,),
                Text('lorem ipsum dolor lorem ipsum dolor lorem ipsum dolor lorem ipsum dolor lorem ipsum dolor lorem ipsum dolor')
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text('Ok', style: TextStyle(color: Colors.blue),),
                onPressed: (){},
              ),
              FlatButton(
                child: Text('Cancel', style: TextStyle(color: Colors.red),),
                onPressed: (){},
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _cardOfStyleTwo() {
    return Container(
      // decoration: BoxDecoration(
      //   //borderRadius: BorderRadius.circular(30.0),
      //   // boxShadow: <BoxShadow>[
      //   //   BoxShadow(
      //   //     color: Colors.black26,
      //   //     blurRadius: 10.0,
      //   //     spreadRadius: 2.0,
      //   //     offset: Offset(2.0, 10.0)
      //   //   )
      //   //]

      // ),
      // child: ClipRRect(
      //         borderRadius: BorderRadius.circular(30.0),
      //         child: Card(
        //         clipBehavior: Clip.antiAlias,
        //         elevation: 8.0,
        //         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
        //   child: Column(
        //     children: <Widget>[
        //       FadeInImage(
        //         image: NetworkImage('https://images.unsplash.com/photo-1556726307-09a5d69f2cd8?ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80'),
        //         placeholder: AssetImage('assets/images/jar-loading.gif'),
        //         fadeInDuration: Duration(milliseconds: 300),
        //         height: 300.0,
        //         fit: BoxFit.cover,
        //       ),
        //       Container(
        //         padding: EdgeInsets.all(10.0),
        //         child: Text('Description of the image ....'),
        //       )
        //     ],
        //   ),
        // ),
      // ),
      child: 
      Card(
        clipBehavior: Clip.antiAlias,
        elevation: 8.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
        child: Column(
          children: <Widget>[
            FadeInImage(
              image: NetworkImage('https://images.unsplash.com/photo-1556726307-09a5d69f2cd8?ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80'),
              placeholder: AssetImage('assets/images/jar-loading.gif'),
              fadeInDuration: Duration(milliseconds: 300),
              height: 300.0,
              fit: BoxFit.cover,
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Text('Description of the image ....'),
            )
          ],
        ),
      ),
    );
  }
}