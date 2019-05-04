import 'package:flutter/material.dart';
import 'package:finance_management/routing/AppRouting.dart';

class Profile extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ProfileState();
  }
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        MediaQuery.removePadding(
          context: context,
          removeTop: true,
          child: Container(
            color: Colors.greenAccent,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 10),
                ),
                Center(
                  child: Text("Toan Ngo"),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                ),
                Center(
                  child: CircleAvatar(
                    child: Icon(
                      Icons.ac_unit,
                      size: 30,
                    ),
                    radius: 40,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15),
                ),
                Table(
                  defaultVerticalAlignment: TableCellVerticalAlignment.top,
                  children: [
                    TableRow(children: [
                      TableCell(
                        child: Center(
                          child: Text("Target"),
                        ),
                      ),
                      TableCell(
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border(
                              left: BorderSide(color: Colors.white),
                              right: BorderSide(color: Colors.white),
                            ),
                          ),
                          child: Center(
                            child: Text("Target\n10"),
                          ),
                        ),
                      ),
                      TableCell(
                        child: Center(
                          child: Text("Target"),
                        ),
                      ),
                    ]),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 15),
                ),
              ],
            ),
          ),
        ),
        MediaQuery.removePadding(
          context: context,
          removeTop: true,
          child: Expanded(
            child: Container(
              color: Colors.grey,
              child: Column(
                children: <Widget>[
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                    child: ListTile(
                      leading: Icon(Icons.satellite),
                      trailing: Icon(Icons.arrow_forward),
                      title: Text("Salary"),
                      onTap: () => {
                        Navigator.pushNamed(context, AppRouting.SALARY_SETTING)
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
