import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

// Listado de colores inmutables
final colorsListProvider = Provider((ref) => colorList);

// Un simple boolean
// final isDarkModeProvider = StateProvider<bool>((ref) => false);

// Un simple int
// final selectColorProvider = StateProvider<int>((ref) => 0);

// Un objeto de tipo AppTheme (custom)
final themeNotifierProvider =
    StateNotifierProvider<ThemeNotifier, AppTheme>((ref) => ThemeNotifier());

// Controler o Norifier
class ThemeNotifier extends StateNotifier<AppTheme> {
  // STATE = Estado = new AppTheme()
  ThemeNotifier() : super(AppTheme());

  void toogleDartMode() {
    state = state.copyWith(isDarkMode: !state.isDarkMode);  
  }

  void changeColorIndex(int colorIndex) {
    state = state.copyWith(selectecColor: colorIndex);
  }

}
