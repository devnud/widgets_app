import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  static const String name = 'snackbar_screen';
  const SnackbarScreen({super.key});

  void showCustomSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text('Hola, soy un SnackBar'),
        duration: const Duration(seconds: 2),
        action: SnackBarAction(
          label: 'Ok!',
          onPressed: () {
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
          },
        ),
      ),
    );
  }

  void openDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: const Text('Estas seguro?'),
        content: const Text(
            'Ea sit exercitation est enim. Fugiat ut id aute veniam non commodo veniam consectetur nulla culpa. Pariatur consectetur nulla deserunt ea eiusmod quis. Culpa est exercitation ex nisi anim laboris adipisicing sunt in elit cupidatat. Eiusmod culpa ipsum velit amet tempor veniam anim laborum exercitation tempor.'),
        actions: [
          TextButton(
            onPressed: () => context.pop(),
            child: const Text('Cancelar'),
          ),
          FilledButton(
            onPressed: () => context.pop(),
            child: const Text('Aceptar'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbar y Diálogos'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
              onPressed: () {
                showAboutDialog(
                  context: context,
                  children: [
                    const Text(
                        'Ad laboris commodo est est est do. Consequat enim esse enim excepteur commodo pariatur sit anim esse ullamco culpa exercitation incididunt excepteur. Mollit consectetur nulla enim sit id duis Lorem et. Deserunt aliqua cillum ea incididunt commodo do eu irure amet tempor ad. Veniam in eu laborum sint ipsum commodo irure est officia qui sunt non. Sit consectetur incididunt enim voluptate Lorem enim. Elit amet ad veniam pariatur ad nostrud aute ea et cupidatat amet pariatur anim sunt.'),
                  ],
                );
              },
              child: const Text('Licencias usadas'),
            ),
            FilledButton.tonal(
              onPressed: () => openDialog(context),
              child: const Text('Mostrar Dialogo'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => showCustomSnackBar(context),
        label: const Text('Mostrar Snackbar'),
        icon: const Icon(Icons.remove_red_eye_outlined),
      ),
    );
  }
}
