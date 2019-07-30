import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedContainerPage extends StatefulWidget {
  @override
  _AnimatedContainerPageState createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {

  double                  _containerWidth             =   50.0;
  double                  _containerHeight            =   50.0;
  Color                   _containerColor             =   Colors.blue;
  BorderRadiusGeometry    _containerBorderRadius      =   BorderRadius.circular(8.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Animated Container'), centerTitle: true,),
      body: Center(
        child: _createAnimatedContainer(),
      ),
      floatingActionButton: _createFloatingActionBtnForAnimation(),
    );
  }

  Widget _createAnimatedContainer() {

    return AnimatedContainer(
      duration: Duration(seconds: 1),
      curve: Curves.easeInCubic,
      height: _containerHeight,
      width: _containerWidth,
      decoration: BoxDecoration(
        color: _containerColor,
        borderRadius: _containerBorderRadius
      ),
    );

  }

  Widget _createFloatingActionBtnForAnimation() {

    return FloatingActionButton(
      child: Icon(Icons.play_arrow),
      onPressed: _cambiarForma,
    );

  }


  void _cambiarForma() {
    final random = Random();
    setState(() {
      _containerHeight = random.nextInt(300).toDouble();
      _containerWidth  = random.nextInt(300).toDouble();;
      _containerColor  = Color.fromRGBO(
      random.nextInt(255), 
      random.nextInt(255), 
      random.nextInt(255), 
      0.70
      );
      _containerBorderRadius = BorderRadius.circular(random.nextInt(100).toDouble());
    });
  }


}