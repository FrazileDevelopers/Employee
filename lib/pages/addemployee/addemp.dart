import 'package:employee/constants/localeKeys.dart';
import 'package:employee/locale/appLocalizations.dart';
import 'package:employee/providers/checkinternet.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddEmployee extends StatefulWidget {
  @override
  _AddEmployeeState createState() => _AddEmployeeState();
}

class _AddEmployeeState extends State<AddEmployee> {
  @override
  Widget build(BuildContext context) {
    AppLocalizations getLocaleName = AppLocalizations.of(context);
    var internetStatus = Provider.of<InternetStatus>(context);
    final mq = MediaQuery.of(context);
    final height = mq.size.height;
    final width = mq.size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          getLocaleName.translate(
            LocaleKeys.addemployee,
          ),
        ),
      ),
    );
  }
}
