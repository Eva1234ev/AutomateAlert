import 'package:flutter/material.dart';
import 'alert_type_attribute.dart';

// ignore: must_be_immutable
class AlertIconWidget extends StatefulWidget {
  AlertTypeAttribute alertAttribute;

  AlertIconWidget(this.alertAttribute);
  @override
  _AlertIconWidgetState createState() => _AlertIconWidgetState();
}

class _AlertIconWidgetState extends State<AlertIconWidget>
    with TickerProviderStateMixin {
  AnimationController controller;

  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
      lowerBound: 0,
      upperBound: 50,
    );

    controller.addListener(() {
      setState(() {});
    });
    controller.repeat(reverse: true);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Icon(widget.alertAttribute.alertIcon,
        color: widget.alertAttribute.alertColor, size: controller.value);
  }
}
