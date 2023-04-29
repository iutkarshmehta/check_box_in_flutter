import 'package:flutter/material.dart';

class Checkbox1 extends StatefulWidget {
  const Checkbox1({Key? key}) : super(key: key);

  @override
  State<Checkbox1> createState() => _Checkbox1State();
}

class _Checkbox1State extends State<Checkbox1> {
  bool _onChanged = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Container(
        color: Colors.green,
        child: Material(
          child: Center(
            child: CheckboxListTile(
              tileColor: Colors.red,
              title: const Text('CheckboxListTile with red background'),
              value: _onChanged,
              onChanged:(bool? value) {
                setState(() {
                  _onChanged = value!;
                });
              },
            ),
          ),
        ),
      )
    );
  }
}
