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
  final bool isDarkMode;

  AppTheme({
    this.selectecColor = 0,
    this.isDarkMode = false,
  })  : assert(selectecColor >= 0, 'selectecColor must be greate then 0'),
        assert(selectecColor < colorList.length,
            'selectecColor must be less or equal than ${colorList.length - 1}');

  ThemeData getTheme() => ThemeData(
        brightness: isDarkMode ? Brightness.dark : Brightness.light,
        colorSchemeSeed: colorList[selectecColor],
        appBarTheme: const AppBarTheme(
          centerTitle: true,
        ),
      );



  AppTheme copyWith({bool? isDarkMode, int? selectecColor}) {
    return AppTheme(
      isDarkMode: isDarkMode ?? this.isDarkMode,
      selectecColor: selectecColor ?? this.selectecColor,
    );
  }
}

