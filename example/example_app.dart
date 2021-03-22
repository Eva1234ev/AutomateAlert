import 'package:flutter/material.dart';
import 'package:automate_alert/automate_alert.dart';

class ShowAlertState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Auto Close popup"),
          backgroundColor: Color(0xFF90CAF9),
        ),
        body: Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(top: 40, left: 40, right: 40, bottom: 10),
            child: ListView(
              padding: const EdgeInsets.all(8),
              children: <Widget>[
                ButtonTheme(
                  minWidth: 60.0,
                  height: 50.0,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    color: Colors.redAccent,
                    onPressed: () async {
                      AlertNoServerAutoDialog(
                          context: context,
                          message: "Can not connect server!",
                          subMessage:
                              'Please try again and check your internet connection',
                          alertType: AlertType.Error,
                          showDuration: 4)
                        ..show();
                    },
                    child: Text(
                      'Error Alert',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 10,
                ),
                ButtonTheme(
                  minWidth: 60.0,
                  height: 50.0,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    color: Colors.green,
                    onPressed: () async {
                      AlertNoServerAutoDialog(
                          context: context,
                          message: "Thanks for letting us know!",
                          subMessage:
                              'Your feedback improves the quality of our product',
                          alertType: AlertType.Success,
                          showDuration: 4)
                        ..show();
                    },
                    child: Text(
                      'Success Alert',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 10,
                ),
                ButtonTheme(
                  minWidth: 60.0,
                  height: 50.0,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    color: Colors.amber[500],
                    onPressed: () async {
                      AlertNoServerAutoDialog(
                        context: context,
                        message: "Low Battery!",
                        subMessage:
                            'Battery temperature too low, your device maybe shut down',
                        alertType: AlertType.Warning,
                      )..show();
                    },
                    child: Text(
                      'Warning Alert',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 10,
                ),
                ButtonTheme(
                    minWidth: 60.0,
                    height: 50.0,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      color: Colors.blue,
                      onPressed: () async {
                        AlertNoServerAutoDialog(
                            context: context,
                            message: "App permissions!",
                            subMessage:
                                'Theres nothing else you need to do, except to learn the app running and keep Bluetooth on',
                            alertType: AlertType.Info,
                            showDuration: 4)
                          ..show();
                      },
                      child: Text(
                        'Info Alert',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    )),
              ],
            )));
  }
}
