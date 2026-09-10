import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:workspace_app/core/shared/casam_button.dart';
import 'package:workspace_app/core/style/color_maingar.dart';
import 'package:workspace_app/core/style/font_style.dart';
import 'package:workspace_app/core/style/utils/utils.dart';

class ButtonCreate extends StatelessWidget {
  final String title;
  final String icons;
  const ButtonCreate({super.key, required this.title, required this.icons});

  @override
  Widget build(BuildContext context) {
    return CasamButton(
      onPressed: () {},
      title: '',
      buttonColor: ColorMaingar.parent,
      costomContint: Row(
        mainAxisAlignment: .center,
        children: [
          SvgPicture.asset(icons),
          SizedBox(width: Utils.getwidth(context: context, widgetwidth: 13)),
          Text(title, style: TextStyles.textS16W5Cb),
        ],
      ),
      width: Utils.getwidth(context: context, widgetwidth: 180),
      height: Utils.getHieght(context: context, widgetHieght: 70),
    );
  }
}
