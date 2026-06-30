//Create a Message Toggle Application using the basics widget in Flutter.

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: TogglePage()));

class TogglePage extends StatefulWidget {
  @override
  State<TogglePage> createState() => _TogglePageState();
}

class _TogglePageState extends State<TogglePage> {
  bool _hello = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Toggle'), centerTitle: true),
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(_hello ? 'RV COLLEGE OF ENGINEERING' : 'GO CHANGE THE WORLD',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
          ElevatedButton(onPressed: () => setState(() => _hello = !_hello), child: Text('Toggle')),
        ],
      )),
    );
  }
}
