import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:workspace_app/core/style/assets_mandment.dart';

class AppBare extends StatelessWidget {
  const AppBare({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        children: [
          Column(
            children: [Text('WorkSpace'), Text('ghrdifjg vdenrbd  doewd')],
          ),

          SvgPicture.asset(AssetsMandment.setting),
        ],
      ),
    );
  }
}
