import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: NinjaCard(),
    ));

class NinjaCard extends StatefulWidget {
  @override
  _NinjaCardState createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  int ninjaLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Ninja ID Card'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            ninjaLevel++;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('images/matt.jpg'),
                radius: 50.0,
              ),
            ),
            Divider(
              height: 90.0,
              color: Colors.grey[600],
            ),
            Text(
              'NAME',
              style: TextStyle(color: Colors.grey, letterSpacing: 2.0),
            ),
            SizedBox(height: 20.0), // give space
            Text(
              'Matthew',
              style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 2.0,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30.0), // give space

            Text(
              'CURRENT NINJA LEVEL',
              style: TextStyle(color: Colors.grey, letterSpacing: 2.0),
            ),
            SizedBox(height: 20.0), // give space
            Text(
              '$ninjaLevel',
              style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 2.0,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30.0), // give vertical space
            Row(
              children: [
                Icon(Icons.email, color: Colors.grey[400]),
                SizedBox(width: 10.0), // give horizontal space
                Text(
                  'adeagbothompson@gmail.com',
                  style: TextStyle(
                      color: Colors.grey[400],
                      letterSpacing: 1.0,
                      fontSize: 10.0,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
