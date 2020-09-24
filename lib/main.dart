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
      body: Center(
        //clickable icon buttons
        child: IconButton(
          onPressed: () {
            print('you clicked me');
          },
          icon: Icon(Icons.alternate_email),
          color: Colors.amber,
        ),

        /*
        //button with icon
        child: RaisedButton.icon( 
          onPressed: () {
            print('you clicked me');
          },
          icon: Icon(
            Icons.mail,
            color: Colors.blue[900],
          ),
          label: Text(
            'Mail me',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blue[800]
            ),
          ),
          color: Colors.amber,
        ),
      
        //button
        child: FlatButton(
          onPressed: () {
            print('you clicked me');
          },
          child: Text('click me'),
          color: Colors.lightBlue,
        ),
       
      //Icon
      child: Icon(
        Icons.airport_shuttle,
        color: Colors.lightBlue,
        size: 50.0
      ),
      */
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('click'),
        backgroundColor: Colors.red[600],
      ),
    );
  }
}
