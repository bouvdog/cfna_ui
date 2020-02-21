import 'package:cfna_ui/AxisRoleSelection.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Campaign for North Africa',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {

  void axisStaff(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (_) {
        return AxisRoleSelection();
      },
    ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Campaign for North Africa',
              style: TextStyle(color: Colors.black)),
          backgroundColor: Colors.amber,
          centerTitle: true,
        ),
        body: Row(mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              color: Colors.deepOrange,
              textColor: Colors.white,
              padding: EdgeInsets.all(8.0),
              splashColor: Colors.deepOrangeAccent,
              onPressed: () {},
              child: Text(
                "Commonwealth",
                style: TextStyle(fontSize: 20.0),
              ),
            ),
            FlatButton(
              color: Colors.brown[100],
              textColor: Colors.black,
              padding: EdgeInsets.all(8.0),
              splashColor: Colors.black,
              onPressed: () => axisStaff(context),
              child: Text(
                "Axis",
                style: TextStyle(fontSize: 20.0),
              ),
            ),
          ],
        ));
  }
}
