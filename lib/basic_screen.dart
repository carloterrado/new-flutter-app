import 'package:flutter/material.dart';
import './immutable_widget.dart';
import './text_layout.dart';

class BasicScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xf23f51b5),
        title: const Text('Welcome to Flutter'),
        actions: const <Widget>[
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Icon(Icons.edit),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Image.asset('assets/beach.jpg'),
          TextLayout(),
        ],
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.lightBlue,
          child: Center(
            child: const Text("I'm a drawer"),
          ),
        ),
      ),
    );
  }
}
