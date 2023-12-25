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
 
];

class AppTheme {
  final int selectecColor;
  final bool isDartMode;

  AppTheme({
    this.selectecColor = 0,
    this.isDartMode = false, 
  }) : assert(selectecColor >= 0, 'selectecColor must be greate then 0'),
       assert(selectecColor < colorList.length, 
       'selectecColor must be less or equal than ${colorList.length}') ;


  ThemeData getTheme() => ThemeData(
        brightness: isDartMode ? Brightness.dark : Brightness.light,
        colorSchemeSeed: colorList[selectecColor],
        appBarTheme: const AppBarTheme(
          centerTitle: true,
        ),
      );
}
