import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class ListViewPage extends StatefulWidget {
  @override
  _ListViewPageState createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  List<int> _listaNumeros = List();
  ScrollController _scrollController = ScrollController();
  int _lastItem = 0;
  bool isLoading = false;
  //initState
  @override
  void initState() { 
    super.initState();
    _load10();

    //sometimes edit controller just get a value set in setstate methods
    //this works in controllers like input on change, but not exists something like onscroll ends
    //so its necesary to create a listener for those events that not exists explicit
    _scrollController.addListener((){
      print('scroll');
      if (_scrollController.position.pixels == _scrollController.position.maxScrollExtent) {
        //_load10();
        fetchData();
      }
    });

  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Lists'),),
      body: Stack(
        children: <Widget>[
          _createListViewBuilder(),
          _createLoading()
        ],
      ),
    );
  }

  Widget _createListViewBuilder() {
    return ListView.builder(
      controller: _scrollController,
      itemCount: _listaNumeros.length,
      itemBuilder: (BuildContext context, int index){
        return FadeInImage(
          image: NetworkImage('https://picsum.photos/id/${_listaNumeros[index]}/500/500'),
          placeholder: AssetImage('assets/images/jar-loading.gif'),
        );
      },
    );
  }

  void _load10() {

    for (var i = 1; i < 10; i++) {
      _lastItem++;
      print('--------- print image ----------------');
      print(_lastItem);
      _listaNumeros.add( _lastItem );
    }
    // esto es muy muy importante ya que inicializa nuevamente el state
    setState(() {});

  }

  Future fetchData() async {

    isLoading = true;
    setState(() {});

    return Timer(Duration(seconds: 4), httpResponse);

  }


  void httpResponse() {
    isLoading = false;
    _scrollController.animateTo(
      _scrollController.position.pixels + 100,
      curve: Curves.fastOutSlowIn,
      duration: Duration(milliseconds: 250)
    );
    _load10();
  }

  Widget _createLoading() {

    if (isLoading) {
      return Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircularProgressIndicator()
            ],
          ),
          SizedBox(height: 20.0,)
        ],
      );
    } else {
      return Container();
    }

  }

}