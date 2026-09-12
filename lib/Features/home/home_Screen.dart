import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:workspace_app/Features/Show_text_Shet.dart';
import 'package:workspace_app/core/shared/app_bar.dart';
import 'package:workspace_app/core/shared/task_items.dart';
import 'package:workspace_app/core/style/assets_mandment.dart';
import 'package:workspace_app/core/style/color_maingar.dart';
import 'package:workspace_app/core/style/utils/utils.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorMaingar.wiet,
        appBar: PreferredSize(
          preferredSize: Size(
            .infinity,
            Utils.getHieght(context: context, widgetHieght: 124),
          ),
          child: AppBare(
            title: 'WorkSpase',
            dic: 'Best platform for creating to-do lists   ',
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),

          child: TaskItems(),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: ColorMaingar.successDefault,
          child: SvgPicture.asset(AssetsMandment.plus),
          onPressed: () async {
            await showTaskSheet(context);
          },
        ),
      ),
    );
  }
}
