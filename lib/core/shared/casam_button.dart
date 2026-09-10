import 'package:flutter/material.dart';
import 'package:workspace_app/core/style/color_maingar.dart';
import 'package:workspace_app/core/style/font_style.dart';
import 'package:workspace_app/core/style/utils/utils.dart';

class CasamButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget? costomContint;
  final String title;
  final Color? buttonColor;
  final double? height;
  final double? width;

  const CasamButton({
    super.key,
    required this.onPressed,
    this.costomContint,
    required this.title,
    this.buttonColor,
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Utils.getHieght(context: context, widgetHieght: height ?? 56),
      width: Utils.getwidth(context: context, widgetwidth: width ?? 327),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape: ContinuousRectangleBorder(borderRadius: .circular(18)),
          backgroundColor: buttonColor ?? ColorMaingar.successDefault,
        ),
        child: costomContint ?? Text(title, style: TextStyles.textS18W5Cw),
      ),
    );
  }
}
