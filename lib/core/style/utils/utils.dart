import 'package:flutter/material.dart';

class Utils {
  static const figmawidth = 375;

  static const fignaHieght = 812;

  static double getwidth({
    required BuildContext context,
    required double widgetwidth,
  }) => (MediaQuery.of(context).size.width * widgetwidth) / figmawidth;

  static double getHieght({
    required BuildContext context,
    required double widgetHieght,
  }) => (MediaQuery.of(context).size.height * widgetHieght) / fignaHieght;
}
