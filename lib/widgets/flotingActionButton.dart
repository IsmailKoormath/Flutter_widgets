import 'package:flutter/material.dart';

class FloatingAction extends StatelessWidget {
   FloatingAction({Key? key}) : super(key: key);

 final ValueNotifier<int> _counter = ValueNotifier(0);

  void _incrementCounter(){
    _counter.value = _counter.value + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Text('couter'),
        Text(_counter as String),
        FloatingActionButton(onPressed: (){
,/;p          _incrementCounter();
        }, child:Icon(Icons.add),)-

      ]),
    );
  }
}
