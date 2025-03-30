import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {
  static const String name = 'ui_controls_screen';

  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('UI Controls')),
      body: _UIControlsView(),
    );
  }
}

class _UIControlsView extends StatefulWidget {
  const _UIControlsView();

  @override
  State<_UIControlsView> createState() => _UIControlsViewState();
}

enum Transportation { car, bus, train }

class _UIControlsViewState extends State<_UIControlsView> {
  bool isChecked = true;
  Transportation selectTransportation = Transportation.car;
  bool wantsBreakfast = false;
  bool wanstsLunch = false;
  bool wanstsDinner = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
          title: const Text('Switch'),
          subtitle: const Text('Controla un valor booleano'),
          value: isChecked,
          onChanged:
              (value) => setState(() {
                isChecked = !isChecked;
              }),
        ),

        ExpansionTile(
          title: const Text('Transportation Vehicle'),
          subtitle: Text('$selectTransportation'),
          children: [
            RadioListTile(
              title: const Text('Car'),
              subtitle: const Text('Travel on Car'),
              value: Transportation.car,
              groupValue: selectTransportation,
              onChanged:
                  (value) => setState(() {
                    selectTransportation = Transportation.car;
                  }),
            ),
            RadioListTile(
              title: const Text('Bus'),
              subtitle: const Text('Travel on Bus'),
              value: Transportation.bus,
              groupValue: selectTransportation,
              onChanged:
                  (value) => setState(() {
                    selectTransportation = Transportation.bus;
                  }),
            ),
            RadioListTile(
              title: const Text('Train'),
              subtitle: const Text('Travel on Train'),
              value: Transportation.train,
              groupValue: selectTransportation,
              onChanged:
                  (value) => setState(() {
                    selectTransportation = Transportation.train;
                  }),
            ),
          ],
        ),
        
        ExpansionTile(title: const Text('Food'),
          subtitle: Text('$wantsBreakfast, $wanstsLunch, $wanstsDinner'),
          children: [
            CheckboxListTile(
              title: const Text('¿Desayuno?'),
              value: wantsBreakfast,
              onChanged:
                  (value) => setState(() {
                    wantsBreakfast = !wantsBreakfast;
                  }),
            ),
            CheckboxListTile(
              title: const Text('Almuerzo?'),
              value: wanstsLunch,
              onChanged:
                  (value) => setState(() {
                    wanstsLunch = !wanstsLunch;
                  }),
            ),
            CheckboxListTile(
              title: const Text('Cena?'),
              value: wanstsDinner,
              onChanged:
                  (value) => setState(() {
                    wanstsDinner = !wanstsDinner;
                  }),
            ),
          ],
        ),


      ],
    );
  }
}
