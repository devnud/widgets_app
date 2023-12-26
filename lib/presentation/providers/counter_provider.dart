import 'package:flutter_riverpod/flutter_riverpod.dart';

final counterProvider = StateProvider<int>((ref) => 5);

final counterNotifierProvider =
    StateNotifierProvider<CounterNotifier, int>((ref) => CounterNotifier());

// Controler o Norifier
class CounterNotifier extends StateNotifier<int> {
  // STATE = Estado = new AppTheme()
  CounterNotifier() : super(0);

  void increment() {
    state++;
  }

  void decrement() {
    state--;
  }

  void reset() {
    state = 0;
  }
}