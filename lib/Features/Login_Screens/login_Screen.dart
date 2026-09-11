import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:workspace_app/core/navigation/routes.dart';
import 'package:workspace_app/core/shared/casam_button.dart';
import 'package:workspace_app/core/shared/text_Feld.dart';
import 'package:workspace_app/core/style/font_style.dart';
import 'package:workspace_app/core/style/utils/utils.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const .symmetric(horizontal: 15, vertical: 20),
        child: Column(
          crossAxisAlignment: .center,
          children: [
            Text('Wellocme Back!', style: TextStyles.textS24W6Cb),
            SizedBox(
              height: Utils.getHieght(context: context, widgetHieght: 2),
            ),
            Text(
              'Your work faster and structured with Todyapp',
              style: TextStyles.textS14W4Cg,
            ),
            SizedBox(
              height: Utils.getHieght(context: context, widgetHieght: 42),
            ),

            TextFeldView(hindtext: 'name@exampel.com', title: 'Email Address'),
            SizedBox(
              height: Utils.getHieght(context: context, widgetHieght: 20),
            ),
            TextFeldView(hindtext: 'Password', title: 'Password'),

            Spacer(),
            CasamButton(
              onPressed: () {
                context.pushReplacement(Routes.KHomeScreen);
              },
              title: 'Login',
            ),
            SizedBox(
              height: Utils.getHieght(context: context, widgetHieght: 15),
            ),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Don n have Accont?',
                    style: TextStyles.textS12W4Cg,
                  ),
                  TextSpan(
                    text: ' SignUp',
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        context.push(Routes.KSignupScreens);
                      },
                    style: TextStyles.textS16W5CBD,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
