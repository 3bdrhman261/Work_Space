import 'package:flutter/material.dart';
import 'package:workspace_app/core/style/color_maingar.dart';

class IconTextbutton extends StatelessWidget {
  final VoidCallback onPressed;
  final String btnTitle;
  final double? fontSize;
  final Color? btnColor;
  final FontWeight? fontWeight;

  const IconTextbutton({
    super.key,
    required this.onPressed,
    required this.btnTitle,
    this.fontSize,
    this.btnColor,
    this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        btnTitle,
        style: TextStyle(
          color: btnColor ?? ColorMaingar.brandDefault,
          fontSize: fontSize ?? 16,
          fontWeight: fontWeight ?? .w500,
        ),
      ),
    );
  }
}
