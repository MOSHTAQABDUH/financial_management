import 'package:flutter/material.dart';
import 'package:finance_management/routing/AppRouting.dart';

void main() => runApp(new FinanceManagement());

class FinanceManagement extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Finance Management",
      initialRoute: AppRouting.SPLASH,
      routes: AppRouting.buildRoutes(),
    );
  }
}