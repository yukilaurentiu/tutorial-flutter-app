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

  String _value = 'Hello';
 

  void _onPressed(){
    setState((){
      _value = ' Yuuk';
    });
  }

   void _onClicked(){
    setState((){
      _value = DateTime.now().toString();
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
              Text(_value),
              ElevatedButton(onPressed: _onPressed, child: const Text('Click me')),
              TextButton(onPressed: _onClicked, child: const Text('Click me'))
              
            ],
          )),

      ),
    );
  }
}