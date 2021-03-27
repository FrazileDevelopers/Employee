import 'package:employee/pages/addemployee/addemp.dart';
import 'package:employee/pages/employees/employees.dart';
import 'package:flutter/material.dart';
import '../pages/home/home.dart';
import '../constants/constants.dart';

class Routers {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Constants.home:
        return MaterialPageRoute(
          builder: (_) => HomePage(),
        );

      case Constants.addemp:
        return MaterialPageRoute(
          builder: (_) => AddEmployee(),
        );

      case Constants.employees:
        return MaterialPageRoute(
          builder: (_) => Employees(),
        );

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text(
                'No route defined for ${settings.name}',
              ),
            ),
          ),
        );
    }
  }
}
