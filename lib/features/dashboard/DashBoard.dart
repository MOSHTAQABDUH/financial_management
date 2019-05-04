import 'package:flutter/material.dart';
import 'package:finance_management/widgets/DrawerMenu.dart';

class Dashboard extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _DashboardState();
  }
}
class _DashboardState extends State<Dashboard> {
  int _selectedIndex = 1;
  final _widgetOptions = [
    Text("Home"),
    Text("Target"),
    Text("Profile"),
    Text("More"),
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Finance Management"),
      ),
      drawer: new DrawerMenu(),
      body: _widgetOptions.elementAt(_selectedIndex),
      floatingActionButton: new FloatingActionButton(
        child: new Icon(Icons.add),
        onPressed: () {
          print("Pressed");
        },
      ),
      resizeToAvoidBottomPadding: false,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Home")
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.track_changes),
            title: Text("Target")
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.portrait),
            title: Text("Profile")
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz),
            title: Text("More")
          )
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemPapped,
      ),
    );
  }

  void _onItemPapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}