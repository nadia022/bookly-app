import 'package:bookly_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  String text;
  Color backgroundColor;
  TextStyle textStyle;
  Radius? topLeftRadius;
  Radius? bottomLeftRadius;
  Radius? topRightRaduis;
  Radius? bottomRightRaduis;

  CustomButton(
      {super.key,
      required this.text,
      required this.backgroundColor,
      required this.textStyle,
      this.topLeftRadius,
      this.bottomLeftRadius,
      this.topRightRaduis,
      this.bottomRightRaduis});

  @override
  Widget build(BuildContext context) {
    return FilledButton(
        style: FilledButton.styleFrom(
          minimumSize: const Size(double.infinity, 48),
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: topLeftRadius ?? const Radius.circular(0),
              bottomLeft: bottomLeftRadius ?? const Radius.circular(0),
              topRight: topRightRaduis ?? const Radius.circular(0),
              bottomRight: bottomRightRaduis ?? const Radius.circular(0),
            ),
          ),
        ),
        onPressed: () {},
        child: Text(
          text,
          style: textStyle,
        ));
  }
}
