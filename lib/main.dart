import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));

}

class MyApp extends StatefulWidget{
  @override
  State createState() => _State();
}

class _State extends State<MyApp>{

  int _value = 0;
 

  // void _onPressed(){
  //   setState((){
  //     _value = ' Yuuk';
  //   });
  // }

  //  void _onClicked(){
  //   setState((){
  //     _value = DateTime.now().toString();
  //   });
  // }
  
  void _add(){
    setState(() {
      _value++;
    });
  }

  void _subtract(){
    setState(() {
      _value--;
    });
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('AppBar'),
      ),
      body: Container(
        padding: const EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: <Widget>[
              // Text(_value),
              // ElevatedButton(onPressed: _onPressed, child: const Text('Click me')),
              // TextButton(onPressed: _onClicked, child: const Text('Click me'))
              Text('value is $_value'),
              IconButton(onPressed: _add, icon: const Icon(Icons.add)),
              IconButton(onPressed: _subtract, icon: const Icon(Icons.remove)),
            ],
          )),

      ),
    );
  }
}