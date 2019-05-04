import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:io';
import 'package:finance_management/routing/AppRouting.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    await Future.delayed(Duration(seconds: 2)).then((_) {
      Navigator.of(context).pushReplacementNamed(AppRouting.DASHBOARD);
    });
    super.initState();
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
            child: Image(
              image: AssetImage("images/splash.jpg"),
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
  }
}