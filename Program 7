//Code a Click Counter App in flutter using basic UI layout with state management

import 'package:flutter/material.dart';

void main() =>runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
       return MaterialApp(home:CounterPage());
  }
}

class CounterPage extends StatefulWidget{
    @override
      State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage>{
  int _counter = 0;
     @override
     Widget build(BuildContext build){
        return Scaffold(
          appBar:AppBar(title:Text('CounterApp')),
          body:Center(child:Column(
            mainAxisAlignment:MainAxisAlignment.center,
            children: [
              Text('Counter:', style:TextStyle(fontSize:20)),
              Text('$_counter',style:TextStyle(fontSize:40,fontWeight:FontWeight.bold)),
              ElevatedButton(onPressed:() => setState(()=> _counter++),child:Text('Add')),
          ],
          ))
        );
     }
}
