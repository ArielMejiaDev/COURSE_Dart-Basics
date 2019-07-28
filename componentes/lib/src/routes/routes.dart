import 'package:componentes/src/pages/alert.dart';
import 'package:componentes/src/pages/avatar.dart';
import 'package:componentes/src/pages/card.dart';
import 'package:componentes/src/pages/home_page.dart';
import 'package:flutter/material.dart';

Map getApplicationRoutes() {

  return <String, WidgetBuilder>{
    '/'         :     (BuildContext context) => HomePage(),
    'avatar'    :     (BuildContext context) => Avatar(),
    'alert'     :     (BuildContext context) => Alert(),
    'card'      :     (BuildContext context) => CardPage()
  };

}