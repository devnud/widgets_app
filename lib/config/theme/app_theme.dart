import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.red,
  Colors.green,
  Colors.blue,
  Colors.yellow,
  Colors.purple,
  Colors.orange,
  Colors.pink,
  Colors.teal,
  Colors.cyan,
  Colors.amber,
  Colors.lime,
  Colors.indigo,
  Colors.brown,
  Colors.grey,
  Colors.blueGrey,
];

class AppTheme {
  final int selectecColor;

  AppTheme({
    this.selectecColor = 0,
  }) : assert(selectecColor >= 0, 'selectecColor must be greate then 0'),
       assert(selectecColor < colorList.length, 
       'selectecColor must be less or equal than ${colorList.length}') ;


  ThemeData getTheme() => ThemeData(
        colorSchemeSeed: colorList[selectecColor],
        appBarTheme: const AppBarTheme(
          centerTitle: true,
        ),
      );
}
