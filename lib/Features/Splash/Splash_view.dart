import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:async';

import 'package:go_router/go_router.dart';
import 'package:workspace_app/core/navigation/routes.dart';
import 'package:workspace_app/core/style/color_maingar.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      context.go(Routes.KonboardingView);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff24A19C),
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            SvgPicture.asset(
              width: 100,
              height: 100,
              'assets/svg/Logo Onboarding.svg',
            ),

            Text(
              'Todyapp ',
              style: TextStyle(
                fontSize: 26,
                fontWeight: .bold,
                color: ColorMaingar.warningBackground,
              ),
            ),

            Text(
              'The best to do list application for you',
              style: TextStyle(
                fontSize: 14,
                fontWeight: .w400,
                color: ColorMaingar.warningBackground,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
