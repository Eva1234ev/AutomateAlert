import 'package:flutter/material.dart';

class AlertTypeAttribute {
  IconData alertIcon;
  Color alertColor;

  AlertTypeAttribute({
    this.alertIcon,
    this.alertColor,
  });
  factory AlertTypeAttribute.fromJson(Map<String, dynamic> json) {
    return AlertTypeAttribute(
      alertIcon: json['alertIcon'],
      alertColor: json['alertColor'],
    );
  }
}
