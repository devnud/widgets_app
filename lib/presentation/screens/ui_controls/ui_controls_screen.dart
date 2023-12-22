import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {
  static const String name = 'ui_controls_screen';
  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('UI Controls'),
        ),
        body: _UiControlsView());
  }
}

class _UiControlsView extends StatefulWidget {
  const _UiControlsView();

  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

enum Transportation { car, plane, boat, submarine }

class _UiControlsViewState extends State<_UiControlsView> {
  bool isDeveloper = true;
  Transportation selectecTransportation = Transportation.car;
  bool wantsBreakfast = false;
  bool wantsLunch = false;
  bool wantsDinner = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
          title: const Text('Developer Mode'),
          subtitle: const Text('Controles adicionales'),
          value: isDeveloper,
          onChanged: (value) => setState(
            () {
              isDeveloper = !isDeveloper;
            },
          ),
        ),
        ExpansionTile(
          title: const Text('Vehiculo de transporte'),
          subtitle: Text('$selectecTransportation'),
          children: [
            RadioListTile(
              title: const Text('Car'),
              subtitle: const Text('Viajar en coche'),
              value: Transportation.car,
              groupValue: selectecTransportation,
              onChanged: (value) => setState(
                () {
                  selectecTransportation = Transportation.car;
                },
              ),
            ),
            RadioListTile(
              title: const Text('Plane'),
              subtitle: const Text('Viajar en avión'),
              value: Transportation.plane,
              groupValue: selectecTransportation,
              onChanged: (value) => setState(
                () {
                  selectecTransportation = Transportation.plane;
                },
              ),
            ),
            RadioListTile(
              title: const Text('Boat'),
              subtitle: const Text('Viajar en barco'),
              value: Transportation.boat,
              groupValue: selectecTransportation,
              onChanged: (value) => setState(
                () {
                  selectecTransportation = Transportation.boat;
                },
              ),
            ),
            RadioListTile(
              title: const Text('Submarine'),
              subtitle: const Text('Viajar en submarino'),
              value: Transportation.submarine,
              groupValue: selectecTransportation,
              onChanged: (value) => setState(
                () {
                  selectecTransportation = Transportation.submarine;
                },
              ),
            ),
          ],
        ),
        CheckboxListTile(
          title: const Text('Desayuno?'),
          value: wantsBreakfast,
          onChanged: (value) => setState(
            () {
              wantsBreakfast = !wantsBreakfast;
            },
          ),
        ),
        CheckboxListTile(
          title: const Text('Almuerzo?'),
          value: wantsLunch,
          onChanged: (value) => setState(
            () {
              wantsLunch = !wantsLunch;
            },
          ),
        ),
        CheckboxListTile(
          title: const Text('Cena?'),
          value: wantsDinner,
          onChanged: (value) => setState(
            () {
              wantsDinner = !wantsDinner;
            },
          ),
        ),
      ],
    );
  }
}
