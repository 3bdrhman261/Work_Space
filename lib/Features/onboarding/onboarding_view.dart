import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:workspace_app/core/style/color_maingar.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            Text(
              'Onboarding ',
              style: TextStyle(
                fontSize: 26,
                fontWeight: .bold,
                color: ColorMaingar.brandDark,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
