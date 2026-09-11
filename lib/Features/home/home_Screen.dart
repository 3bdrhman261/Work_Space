import 'package:flutter/material.dart';
import 'package:workspace_app/core/shared/app_bar.dart';
import 'package:workspace_app/core/style/utils/utils.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(
          .infinity,
          Utils.getHieght(context: context, widgetHieght: 10),
        ),
        child: AppBare(),
      ),
    );
  }
}
