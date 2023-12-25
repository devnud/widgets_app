import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

// Listado de colores inmutables  

final  colorsListProvider = Provider((ref) => colorList);

// Un simple boolean

final isDarkModeProvider = StateProvider<bool>((ref) => false);

// Un simple int

final selectColorProvider = StateProvider<int>((ref) => 0);

