import 'package:flutter/material.dart';
import 'package:workspace_app/core/shared/casam_button.dart';
import 'package:workspace_app/core/shared/text_Feld.dart';
import 'package:workspace_app/core/style/font_style.dart';
import 'package:workspace_app/core/style/utils/utils.dart';

class SignupScreens extends StatefulWidget {
  const SignupScreens({super.key});

  @override
  State<SignupScreens> createState() => _SignupScreensState();
}

class _SignupScreensState extends State<SignupScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const .symmetric(horizontal: 15, vertical: 20),
        child: Column(
          crossAxisAlignment: .center,
          children: [
            Text('Create account', style: TextStyles.textS24W6Cb),
            SizedBox(
              height: Utils.getHieght(context: context, widgetHieght: 2),
            ),
            Text(
              'Create your account and feel the benefits  ',
              style: TextStyles.textS14W4Cg,
            ),
            SizedBox(
              height: Utils.getHieght(context: context, widgetHieght: 42),
            ),

            TextFeldView(hindtext: 'Enter your username', title: 'Username'),
            SizedBox(
              height: Utils.getHieght(context: context, widgetHieght: 20),
            ),
            TextFeldView(hindtext: 'Enter your password', title: 'Password'),
            Spacer(),
            CasamButton(onPressed: () {}, title: 'Sign Up'),
          ],
        ),
      ),
    );
  }
}
