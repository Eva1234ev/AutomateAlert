import 'package:flutter/material.dart';
import 'package:automate_alert/automate_alert.dart';

class ShowAlert extends StatefulWidget {
  @override
  _ShowAlertState createState() => _ShowAlertState();
}

class _ShowAlertState extends State<ShowAlert> {
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
                FloatingActionButton.extended(
                  onPressed: () {
                    AlertNoServerAutoDialog(
                        context: context,
                        message: "Can not connect server!",
                        subMessage:
                            'Please try again and check your internet connection',
                        alertType: AlertType.Error,
                        showDuration: 4)
                      ..show();
                  },
                  label: Text('Error Alert',
                      style: TextStyle(
                        color: Colors.white,
                      )),
                  icon: const Icon(Icons.error, color: Colors.white),
                  backgroundColor: Colors.redAccent,
                ),
                Container(
                  height: 15,
                ),
                FloatingActionButton.extended(
                  onPressed: () {
                    AlertNoServerAutoDialog(
                        context: context,
                        message: "Thanks for letting us know!",
                        subMessage:
                            'Your feedback improves the quality of our product',
                        alertType: AlertType.Success,
                        showDuration: 4)
                      ..show();
                  },
                  hoverColor: Colors.grey,
                  label: const Text(
                    'Success Alert',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  icon: const Icon(Icons.check_circle, color: Colors.white),
                  backgroundColor: Colors.green,
                ),
                Container(
                  height: 15,
                ),
                FloatingActionButton.extended(
                  onPressed: () {
                    ScaffoldMessenger.of(context)
                        .showSnackBar(SnackBar(content: Text('Tap')));
                    AlertNoServerAutoDialog(
                      context: context,
                      message: "Low Battery!",
                      subMessage:
                          'Battery temperature too low, your device maybe shut down',
                      alertType: AlertType.Warning,
                    )..show();
                  },
                  label: const Text(
                    'Warning Alert',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  icon: const Icon(Icons.info, color: Colors.white),
                  backgroundColor: Colors.amber[500],
                ),
                Container(
                  height: 15,
                ),
                FloatingActionButton.extended(
                  onPressed: () {
                    AlertNoServerAutoDialog(
                        context: context,
                        message: "App permissions!",
                        subMessage:
                            'Theres nothing else you need to do, except to learn the app running and keep Bluetooth on',
                        alertType: AlertType.Info,
                        showDuration: 4)
                      ..show();
                  },
                  label: const Text(
                    'Info Alert',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  icon: const Icon(Icons.help_outlined, color: Colors.white),
                  backgroundColor: Colors.blue,
                ),
              ],
            )));
  }
}
