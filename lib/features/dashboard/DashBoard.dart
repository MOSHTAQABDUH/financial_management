import 'package:flutter/material.dart';
import 'package:finance_management/widgets/DrawerMenu.dart';

class DashBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Finance Management"),
      ),
      drawer: new DrawerMenu(),
      floatingActionButton: new FloatingActionButton(
        child: new Icon(Icons.add),
        onPressed: () {
          print("Pressed");
        },
      ),
      resizeToAvoidBottomPadding: false,
    );
  }
}