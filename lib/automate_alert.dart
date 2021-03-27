library automate_alert;

import 'dart:async';
import 'package:flutter/material.dart';
import 'alert_type_attribute.dart';
import 'alert_slow_show.dart';
import 'alert_Icon_show.dart';

enum AlertType { Error, Success, Warning, Info }
enum AlertAnimateType { SizeAnimate, SlowAppear }

class AlertNoServerAutoDialog {
  final BuildContext context;

  final String message;

  final String subMessage;

  final AlertType alertType;

  final AlertAnimateType alertAnimateType;

  final int showDuration;

  AlertNoServerAutoDialog(
      {@required this.context,
      this.message,
      this.subMessage = '',
      this.alertType = AlertType.Error,
      this.alertAnimateType = AlertAnimateType.SlowAppear,
      this.showDuration = 2});

  Timer _timer;
  AlertTypeAttribute alertTypeAttribute;
  Future show() => showDialog(
          context: context,
          builder: (BuildContext builderContext) {
            _getIconResult(alertType);
            _timer = Timer(Duration(seconds: showDuration), () {
              Navigator.of(context).pop();
            });
            return AlertDialog(
                content: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                  _getAnimate(alertAnimateType),
                  SlowShow(
                    child: Text(message,
                        maxLines: 4,
                        textAlign: TextAlign.center,
                        style: new TextStyle(
                          fontSize: 16.0,
                          fontFamily: 'Roboto',
                          color: alertTypeAttribute.alertColor,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                  Container(height: 10),
                  subMessage.isNotEmpty
                      ? SlowShow(
                          child: Text(
                          subMessage,
                          maxLines: 4,
                          textAlign: TextAlign.center,
                          style: new TextStyle(
                            fontSize: 14.0,
                            color: new Color(0xFF212121),
                          ),
                        ))
                      : Container(),
                ]));
          }).then((val) {
        if (_timer.isActive) {
          _timer.cancel();
        }
      });

  void _getIconResult(AlertType type) {
    switch (type) {
      case AlertType.Error:
        alertTypeAttribute = AlertTypeAttribute.fromJson(
            {"alertIcon": Icons.error, "alertColor": Colors.redAccent});
        break;
      case AlertType.Success:
        alertTypeAttribute = AlertTypeAttribute.fromJson(
            {"alertIcon": Icons.check_circle, "alertColor": Colors.green});

        break;
      case AlertType.Info:
        alertTypeAttribute = AlertTypeAttribute.fromJson({
          "alertIcon": Icons.help_outlined,
          "alertColor": Color(0xFF5C6BC0)
        });

        break;
      case AlertType.Warning:
        alertTypeAttribute = AlertTypeAttribute.fromJson(
            {"alertIcon": Icons.info, "alertColor": Color(0xFFF9A825)});

        break;
      default:
        alertTypeAttribute = AlertTypeAttribute.fromJson({
          "alertIcon": Icons.account_circle,
          "alertColor": Color(0xFFEA80FC)
        });
    }
  }

  Widget _getAnimate(AlertAnimateType type) {
    switch (type) {
      case AlertAnimateType.SizeAnimate:
        return AlertIconWidget(alertTypeAttribute);
        break;
      case AlertAnimateType.SlowAppear:
        return SlowShow(
          child: Icon(alertTypeAttribute.alertIcon,
              color: alertTypeAttribute.alertColor, size: 40),
        );
        break;
    }
  }
}
