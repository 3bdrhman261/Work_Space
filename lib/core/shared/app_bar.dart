import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:workspace_app/core/style/assets_mandment.dart';
import 'package:workspace_app/core/style/font_style.dart';

class AppBare extends StatelessWidget {
  final String title;
  final String dic;
  const AppBare({super.key, required this.title, required this.dic});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 24),
      child: Row(
        mainAxisAlignment: .spaceBetween,
        children: [
          Column(
            crossAxisAlignment: .start,
            children: [
              Text(title, style: TextStyles.textS24W6Cb),
              Text(dic, style: TextStyles.textS14W4Cg),
            ],
          ),

          SvgPicture.asset(AssetsMandment.setting),
        ],
      ),
    );
  }
}
