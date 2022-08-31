import "package:flutter/material.dart";
import 'package:travel_app/widgets/text.dart';

import '../misc/colors.dart';

class AppButton extends StatelessWidget {
  final Color color;
  IconData? icon;
  final Color backgroundColor;
  double size;
  final Color borderColor;
  String? text;
  bool? isIcon;

  AppButton(
      {Key? key,
      this.isIcon = false,
      this.text,
      this.icon,
      required this.color,
      required this.size,
      required this.backgroundColor,
      required this.borderColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
          border: Border.all(
            color: borderColor,
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(25),
          color: backgroundColor),
      child: isIcon == false
          ? Center(
              child: AppText(
              text: text!,
              size: 16,
              color: color,
            ))
          : Center(
              child: Icon(
              icon,
              color: color,
            )),
    );
  }
}
