import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/presentation/providers/providers.dart';

class CounterScreen extends ConsumerWidget {
  static const String name = 'counter_screen';

  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final int clickCounter = ref.watch(counterNotifierProvider);
    final bool isDarkMode = ref.watch(themeNotifierProvider).isDarkMode;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
        actions: [
          IconButton(
            icon: isDarkMode
                ? const Icon(Icons.dark_mode_outlined)
                : const Icon(Icons.light_mode_outlined),
            // icon: Icon(Icons.dark_mode_outlined),
            onPressed: () {
              ref.read(themeNotifierProvider.notifier).toogleDartMode();
            },
          ),
        ],
      ),
      body: Center(
        child: Text(
          'Valor: $clickCounter',
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              // las dos valen igual
              ref.watch(counterNotifierProvider.notifier).reset();
              // ref.read(counterProvider.notifier).update((state) => state + 1);
            },
            child: const Icon(Icons.refresh_rounded),
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            onPressed: () {
              // las dos valen igual
              ref.watch(counterNotifierProvider.notifier).increment();
              // ref.read(counterProvider.notifier).update((state) => state + 1);
            },
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
        onPressed: () {
          // las dos valen igual
          ref.watch(counterNotifierProvider.notifier).decrement();
          // ref.read(counterProvider.notifier).update((state) => state + 1);
        },
        child: const Icon(Icons.exposure_neg_1_outlined),
      ),
      
        ],
      ),
    );
  }
}
