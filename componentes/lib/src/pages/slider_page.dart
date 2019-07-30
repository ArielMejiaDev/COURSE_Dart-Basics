import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _initialValue = 150.0;
  bool _lock = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Slider'), centerTitle: true,),
      body: Container(
        padding: EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 0.0),
        child: Column(
          children: <Widget>[
            _createSlider(),
            _createCheckbox(),
            _createSwitch(),
            Expanded(
              child: _createImage(),
            )
          ],
        ),
      )
    );
  }

  Widget _createSlider() {

    return Slider(
      value: _initialValue,
      min: 0.0,
      max: 200.0,
      activeColor: Colors.red,
      label: 'Select image size',
      //divisions: 10,
      onChanged: _lock ? null : (value){
        setState(() {
         _initialValue = value; 
        });
      },
    );

  }

  Widget _createImage() {

    return Image(
      image: NetworkImage('https://www.sideshow.com/storage/product-images/903749/iron-man-mark-xlvi-concept-art-version_marvel_silo_sm.png'),
      width: _initialValue,
      fit: BoxFit.contain,
    );

  }

  Widget _createCheckbox() {

    return CheckboxListTile(
      title: Text('Lock resize'),
      activeColor: Colors.red,
      value: _lock,
      onChanged: (value){
       setState(() {
        _lock = value; 
       });
      },
    );

  }

  Widget _createSwitch() {

    return SwitchListTile(
      activeColor: Colors.red,
      title: Text('Lock resize'),
      value: _lock,
      onChanged: (value){
        setState(() {
         _lock = value; 
        });
      },
    );

  }

}