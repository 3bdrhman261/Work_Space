import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';
import 'package:workspace_app/Features/creare_accont/widget/button_create.dart';
import 'package:workspace_app/core/shared/casam_button.dart';
import 'package:workspace_app/core/style/assets_mandment.dart';
import 'package:workspace_app/core/style/color_maingar.dart';
import 'package:workspace_app/core/style/font_style.dart';
import 'package:workspace_app/core/style/utils/utils.dart';

class CreateAccont extends StatelessWidget {
  const CreateAccont({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorMaingar.wiet,
      body: Padding(
        padding: .only(
          bottom: Utils.getwidth(context: context, widgetwidth: 30),
          top: Utils.getwidth(context: context, widgetwidth: 50),
        ),

        child: Center(
          child: Column(
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(text: 'Welcome to', style: TextStyles.textS26W6Cb),

                    TextSpan(
                      text: 'WorkSpace',
                      style: TextStyles.textS18W5CBRABD,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: Utils.getHieght(context: context, widgetHieght: 57),
              ),
              SizedBox(
                height: Utils.getHieght(context: context, widgetHieght: 379),
                width: Utils.getwidth(context: context, widgetwidth: 325),
                child: Image.asset(AssetsMandment.WelcominageScreen),
              ),
              SizedBox(
                height: Utils.getHieght(context: context, widgetHieght: 50),
              ),
              CasamButton(
                onPressed: () {},
                title: '',
                costomContint: Row(
                  mainAxisAlignment: .center,
                  spacing: 5,
                  children: [
                    SvgPicture.asset(AssetsMandment.message),

                    Text('Continue With Email ', style: TextStyles.textS18W5Cw),
                  ],
                ),
              ),
              SizedBox(
                height: Utils.getHieght(context: context, widgetHieght: 13),
              ),
              // Divider => الخط
              Row(
                children: [
                  Expanded(child: Divider()),

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      'or continue with',
                      style: TextStyles.textS12W4Cg,
                    ),
                  ),

                  Expanded(child: Divider()),
                ],
              ),
              SizedBox(
                height: Utils.getHieght(context: context, widgetHieght: 30),
              ),
              Row(
                mainAxisAlignment: .spaceEvenly,
                children: [
                  ButtonCreate(
                    title: 'Facebook',
                    icons: AssetsMandment.facebooks,
                  ),
                  ButtonCreate(title: 'Goole', icons: AssetsMandment.googles),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
