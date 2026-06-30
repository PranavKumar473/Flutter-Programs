//Build a simple counter app with increment and decrement buttons to show subsequent values on the screen

import 'package:flutter/material.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
      return MaterialApp(home:CounterPage());
  }
}
class CounterPage extends StatefulWidget {
  @override
  State<CounterPage> createState() => _CounterPageState();
}
class _CounterPageState extends State<CounterPage> {
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Counter')),
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Count: $_counter', style: TextStyle(fontSize: 20)),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            ElevatedButton(onPressed: () => setState(() => _counter--), child: Text('-')),
            SizedBox(width: 20),
            ElevatedButton(onPressed: () => setState(() => _counter++), child: Text('+')),
          ]),
        ],
      )),
    );
  }
}
