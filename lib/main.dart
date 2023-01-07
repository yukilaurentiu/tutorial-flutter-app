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

  String _value = 'Your typing ...';
 
  void _onChanged(String value){
    setState(() { 
      _value = 'Changed $value';
    });
  }

  void _onSubmit(String value){
    setState(() {
      _value = 'Submit $value';
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
              TextField(
                decoration: const InputDecoration(
                  labelText: 'Hello',
                  hintText: 'typing here!',
                  icon: Icon(Icons.edit)
                ),
                autocorrect: true,
                autofocus: true,
                keyboardType: TextInputType.text,
                onChanged: _onChanged,
                onSubmitted: _onSubmit,
              )
            ],
          )),
      ),
    );
  }
}
