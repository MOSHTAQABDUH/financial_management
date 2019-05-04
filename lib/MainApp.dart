import 'package:flutter/material.dart';
import 'package:finance_management/features/dashboard/DashBoard.dart';

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Dashboard(),
    );
  }
}