import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/config/menu/menu_items.dart';
import 'package:widgets_app/presentation/providers/providers.dart';
import 'package:widgets_app/presentation/widgets/side_menu.dart';

class HomeScreen extends ConsumerWidget {
  static const String name = 'home_screen';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final bool isDarkMode = ref.watch(themeNotifierProvider).isDarkMode;

    final scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: const Text('Flutter + Material 3'),
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
      body: _HomeView(),
      drawer: SideMenu(scafolldKey: scaffoldKey,),
    );
  }
}

class _HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: appMenuItems.length,
      itemBuilder: (context, index) {
        final item = appMenuItems[index];
        return _CustomListTile(item: item);
      },
    );
  }
}

class _CustomListTile extends StatelessWidget {
  const _CustomListTile({
    required this.item,
  });

  final MenuItems item;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme.primary;
    return ListTile(
      title: Text(
        item.title,
        style: TextStyle(color: colors),
      ),
      subtitle: Text(item.subTitle),
      leading: Icon(
        item.icon,
        color: colors,
      ),
      trailing: Icon(
        Icons.chevron_right,
        color: colors,
      ),
      onTap: () {
        // Navigator.of(context).push(
        //   MaterialPageRoute(
        //     builder: (context) => const ButtonsScreen(),
        //   ),
        // );
        // Navigator.of(context).pushNamed(item.link);

        // context.pushNamed(CardsScreen.name);
        context.push(item.link);
      },
    );
  }
}
