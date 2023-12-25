import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/presentation/providers/providers.dart';

class ThemeChangersScreen extends ConsumerWidget {
  static const String name = 'theme-changers-screen';
  const ThemeChangersScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bool isDarkMode = ref.watch(isDarkModeProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme Changers'),
        actions: [
          IconButton(
            icon: isDarkMode
                ? const Icon(Icons.dark_mode_outlined)
                : const Icon(Icons.light_mode_outlined),
            onPressed: () {
              ref.read(isDarkModeProvider.notifier)
              .update((state) => !state);
            },
          ),
        ],
      ),
      body: const _ThemeCangerView(),
    );
  }
}

class _ThemeCangerView extends ConsumerWidget {
  const _ThemeCangerView();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<Color> colors = ref.watch(colorsListProvider);
    final int selectColor = ref.watch(selectColorProvider);

    return ListView.builder(
        itemCount: colors.length,
        itemBuilder: (BuildContext context, int index) {
          final Color color = colors[index];
          return RadioListTile(
            title: Text(
              'Este color',
              style: TextStyle(color: color),
            ),
            subtitle: Text('${color.value}'),
            activeColor: color,
            value: index,
            groupValue: selectColor,
            onChanged: (value) {
              ref.read(selectColorProvider.notifier).state = index;
            },
          );
        });
  }
}
