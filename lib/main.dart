import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Home(),
    ));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('my first app')),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),

      body: Padding( //padding widget
        padding: EdgeInsets.all(90.0),
        child: Text('hello'),
      ),
      
      /*
      //container widget
      Container(
        //padding effects inside the container while margin effects aroung the container
        //padding: EdgeInsets.all(20.0),
        //padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        padding: EdgeInsets.fromLTRB(10.0, 20.0, 30.0, 40.0),
        margin: EdgeInsets.all(30.0), //same principle as padding
        color: Colors.grey[400],
        child: Text('hello'),
      ),
      */
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('click'),
        backgroundColor: Colors.red[600],
      ),
    );
  }
}
