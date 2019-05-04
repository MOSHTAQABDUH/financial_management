import 'package:flutter/material.dart';
import 'package:finance_management/formatter/NumberFormat.dart';

class SalarySetting extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new SalarySettingState();
  }
}

class SalarySettingState extends State<SalarySetting> {
  final GlobalKey salaryKey = new GlobalKey();
  final GlobalKey taxKey = new GlobalKey();

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Salary settings"),
      ),
      body: new Container(
        padding: const EdgeInsets.all(20),
        child: new Column(
          children: <Widget>[
            new TextFormField(
              key: salaryKey,
              keyboardType: TextInputType.numberWithOptions(),
              decoration: new InputDecoration(
                labelText: 'Your monthly salary',
              ),
              inputFormatters: [new CurrencyInputFormatter()],
            ),
            new TextFormField(
              key: taxKey,
              keyboardType: TextInputType.numberWithOptions(),
              decoration: new InputDecoration(
                labelText: 'Tax',
              ),
              inputFormatters: [new CurrencyInputFormatter()],
            ),
            new Container(
              width: screenSize.width,
              child: new RaisedButton(
                child: new Text("SAVE"),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
