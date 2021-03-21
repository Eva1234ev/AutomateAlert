import 'dart:async';
import 'package:flutter/material.dart';
import 'package:automate_alert/automate_alert.dart';

// ignore: must_be_immutable
class ShowAlert extends StatefulWidget {
  @override
  _ShowAlertState createState() => _ShowAlertState();
}

class _ShowAlertState extends State<ShowAlert> {
  @override
  Widget build(BuildContext context) {
    body:
    ButtonTheme(
      minWidth: 130.0,
      height: 40.0,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        color: Colors.blueGrey,
        onPressed: () async {
          AlertNoServerAutoDialog(
              context: context,
              message: "Can not connect server!",
              subMessage: 'Please try again and check your internet connection',
              alertType: AlertType.Warning,
              showDuration: 4)
            ..show();
        },
        child: Text(
          'Show pop up',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        ),
      ),
    );
  }
}
