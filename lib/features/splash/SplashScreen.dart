import 'package:flutter/material.dart';
import 'package:finance_management/features/dashboard/DashBoard.dart';
import 'package:finance_management/routing/AppRouting.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () => {
      Navigator.pushReplacementNamed(context, AppRouting.DASHBOARD)
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: Colors.blueAccent
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                backgroundColor: Colors.blueGrey,
                radius: 60,
                child: Icon(
                  Icons.ac_unit,
                  size: 80,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30),
              ),
              Text(
                "Financial Management".toUpperCase(),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}