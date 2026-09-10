import 'package:flutter/material.dart';
import 'package:workspace_app/core/style/color_maingar.dart';

import 'package:workspace_app/core/style/font_style.dart';
import 'package:workspace_app/core/style/utils/utils.dart';

class OnboardingItemTap extends StatelessWidget {
  final String image;
  final String title;
  final String discreption;
  const OnboardingItemTap({
    super.key,
    required this.image,
    required this.title,
    required this.discreption,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: .bottomCenter,
          children: [
            Image.asset(
              image,
              width: Utils.getwidth(context: context, widgetwidth: 375),
              height: Utils.getHieght(context: context, widgetHieght: 392),
            ),

            Container(
              height: Utils.getHieght(context: context, widgetHieght: 80),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.white.withOpacity(0),

                    ColorMaingar.wiet,
                    ColorMaingar.wiet,
                  ],
                ),
              ),
              child: Text(
                title,
                style: TextStyles.textS26W6Cb,
                textAlign: .center,
              ),
            ),
          ],
        ),
        SizedBox(height: Utils.getHieght(context: context, widgetHieght: 20)),
        Text(discreption, style: TextStyles.textS14W4Cg, textAlign: .center),
      ],
    );
  }
}
