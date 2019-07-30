import 'package:flutter/material.dart';

final _icon = {
  'add_alert'     : Icons.add_alert,
  'accessibility' : Icons.accessibility,
  'folder_open'   : Icons.folder_open,
  'donut_large'   : Icons.donut_large,
  'input'         : Icons.input,
  'tune'          : Icons.tune,
  'list'          : Icons.list
};

Icon getIcon(String iconName) {

  return Icon( _icon[iconName], color: Colors.blue, );

}