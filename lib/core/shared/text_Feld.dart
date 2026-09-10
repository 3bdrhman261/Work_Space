import 'package:flutter/material.dart';
import 'package:workspace_app/core/style/font_style.dart';
import 'package:workspace_app/core/style/utils/utils.dart';

class TextFeldView extends StatelessWidget {
  final String hindtext;
  final String title;
  const TextFeldView({super.key, required this.hindtext, required this.title});

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    return SizedBox(
      width: Utils.getwidth(context: context, widgetwidth: 327),
      child: Column(
        crossAxisAlignment: .start,
        children: [
          Text(title, style: TextStyles.textS16W5Cb),
          SizedBox(
            height: Utils.getHieght(context: context, widgetHieght: 56),
            child: TextField(
              controller: controller,

              decoration: InputDecoration(
                hintText: hindtext,
                hintStyle: TextStyles.textS16W4Cg,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),

                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
