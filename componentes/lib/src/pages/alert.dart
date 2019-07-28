import 'package:flutter/material.dart';

class Alert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert'),
        centerTitle: true,
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Show Alert'),
          shape: StadiumBorder(),
          color: Colors.blue,
          textColor: Colors.white,
          onPressed: () => _showAlert(context),
        ),
      ),
    );
  }

  Widget _showAlert(BuildContext context) {

    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          title: Text('Title of Alert'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text('Alert content with some random text like lorem ipsum dolor ....'),
              SizedBox(height: 10.0,),
              FlutterLogo(size: 50.0,)
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Ok', style: TextStyle(color: Colors.blue)),
              onPressed: () => Navigator.of(context).pop(),
            ),
            FlatButton(
              child: Text('Cancel', style: TextStyle(color: Colors.red)),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ],
        );
      }
    );

  }

}