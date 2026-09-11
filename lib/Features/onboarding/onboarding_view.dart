import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:workspace_app/Features/onboarding/widgets/onboarding_item_tap.dart';
import 'package:workspace_app/core/navigation/routes.dart';
import 'package:workspace_app/core/shared/casam_button.dart';
import 'package:workspace_app/core/shared/icon_textButton.dart';
import 'package:workspace_app/core/style/assets_mandment.dart';
import 'package:workspace_app/core/style/color_maingar.dart';
import 'package:workspace_app/core/style/utils/utils.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(250, 251, 251, 1),
      body: Padding(
        padding: .only(
          top: Utils.getHieght(context: context, widgetHieght: 20),
        ),
        child: Column(
          children: [
            Container(
              alignment: .topEnd,
              child: IconTextbutton(
                onPressed: () {
                  context.pushReplacement(Routes.KCreateAccont);
                },
                btnTitle: 'Skip',
              ),
            ),
            SizedBox(
              height: Utils.getHieght(context: context, widgetHieght: 10),
            ),

            Expanded(
              child: PageView(controller: _controller, children: _Onboarding()),
            ),

            SizedBox(
              height: Utils.getHieght(context: context, widgetHieght: 20),
            ),

            SmoothPageIndicator(
              controller: _controller,
              count: 2,

              axisDirection: Axis.horizontal,

              effect: ExpandingDotsEffect(
                activeDotColor: ColorMaingar.successDefault,
                dotWidth: 8,
                dotHeight: 8,

                dotColor: ColorMaingar.successOutline,
              ),
            ),
            SizedBox(
              height: Utils.getHieght(context: context, widgetHieght: 90),
            ),
            CasamButton(
              onPressed: () {
                animationToNextPage();
              },
              title: 'Continue',
            ),
            SizedBox(
              height: Utils.getHieght(context: context, widgetHieght: 30),
            ),
          ],
        ),
      ),
    );
  }

  void animationToNextPage() {
    final int currentpage = _controller.page?.round() ?? 0;
    if (currentpage == 1) {
      context.pushReplacement(Routes.KCreateAccont);
    } else {
      _controller.nextPage(
        duration: const Duration(microseconds: 500),
        curve: Curves.elasticInOut,
      );
    }
  }

  List<Widget> _Onboarding() => [
    OnboardingItemTap(
      image: AssetsMandment.OnporningOneScreen,
      title: 'Your convenience in \n making a todo list',
      discreption:
          'Heres a mobile platform that helps you create task \n or to list so that it can help you in every job \n easier and faster.',
    ),
    OnboardingItemTap(
      image: AssetsMandment.OnporningTowScreen,
      title: 'Find the practicality in\n making your todo list',
      discreption:
          'Easy-to-understand user interface  that makes you\n more comfortable when you want to create a task or \nto do list, Todyapp can also improve productivity',
    ),
  ];
}
