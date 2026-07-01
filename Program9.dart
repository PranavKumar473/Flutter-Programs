import 'package:flutter/material.dart';

void main()=> runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
  return MaterialApp(home:GestureDemo());
  }
}
//void main() => runApp(MaterialApp(home: GestureDemo()));
class GestureDemo extends StatefulWidget {
  @override
  State<GestureDemo> createState() => _GestureDemoState();
}
class _GestureDemoState extends State<GestureDemo> {
  String _message = 'Double Tap or Swipe';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Gesture Detector Example')),
      body: Center(child: GestureDetector(
        onDoubleTap: () => setState(() => _message = 'Double Tap'),
        onPanUpdate: (d) => setState(() =>
            _message = d.delta.dx > 0 ? 'Swipe Right' : 'Swipe Left'),
        child: Container(
          width: 200, height: 200,
          color: Colors.blue,
          alignment: Alignment.center,
          child: Text(_message, textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 20)),
        ),
      )),
    );
  }
}
