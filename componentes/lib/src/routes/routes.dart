import 'package:flutter/material.dart';
//Routes files
import 'package:componentes/src/pages/home_page.dart';
import 'package:componentes/src/pages/avatar.dart';
import 'package:componentes/src/pages/alert.dart';
import 'package:componentes/src/pages/card.dart';
import 'package:componentes/src/pages/animated_container.dart';
import 'package:componentes/src/pages/input_page.dart';
import 'package:componentes/src/pages/slider_page.dart';
import 'package:componentes/src/pages/listview_page.dart';


Map getApplicationRoutes() {

  return <String, WidgetBuilder>{
    '/'                   :     (BuildContext context) => HomePage(),
    'avatar'              :     (BuildContext context) => Avatar(),
    'alert'               :     (BuildContext context) => Alert(),
    'card'                :     (BuildContext context) => CardPage(),
    'animatedContainer'   :     (BuildContext context) => AnimatedContainerPage(),
    'inputs'              :     (BuildContext context) => InputPage(),
    'slider'              :     (BuildContext context) => SliderPage(),
    'lists'               :     (BuildContext context) => ListViewPage()
  };

}