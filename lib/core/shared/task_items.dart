import 'package:flutter/material.dart';
import 'package:workspace_app/core/style/color_maingar.dart';
import 'package:workspace_app/core/style/font_style.dart';
import 'package:workspace_app/core/style/utils/utils.dart';

class TaskItems extends StatefulWidget {
  const TaskItems({super.key});

  @override
  State<TaskItems> createState() => _TaskItemsState();
}

class _TaskItemsState extends State<TaskItems> {
  bool incheck = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Stack(
        alignment: .bottomCenter,
        children: [
          Container(
            height: Utils.getHieght(context: context, widgetHieght: 200),
            decoration: BoxDecoration(
              color: ColorMaingar.successDefault,
              borderRadius: BorderRadius.circular(9),
              boxShadow: [
                BoxShadow(
                  blurRadius: 30,
                  blurStyle: .outer,
                  offset: Offset.zero,
                  spreadRadius: 0,
                  color: ColorMaingar.neutralGhost,
                ),
              ],
            ),
          ),

          SizedBox(
            height: Utils.getHieght(context: context, widgetHieght: 160),
            child: Card(
              margin: .zero,
              shape: BeveledRectangleBorder(
                borderRadius: .vertical(top: .zero, bottom: .circular(2)),
              ),
              color: ColorMaingar.wiet,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 14,
                  vertical: 12,
                ),
                child: Column(
                  crossAxisAlignment: .start,
                  children: [
                    Row(
                      spacing: 2,
                      children: [
                        Checkbox(
                          value: incheck,
                          onChanged: (value) {
                            setState(() {
                              incheck = value!;
                            });
                          },
                        ),
                        Text('Task title ', style: TextStyles.textS16W5Cb),
                      ],
                    ),
                    Text('Task Discrbtion', style: TextStyles.textS12W4Cg),

                    Divider(),

                    Row(
                      mainAxisAlignment: .end,
                      children: [
                        Text(
                          'Today . Mon 20 Jul 2022',
                          style: TextStyles.textS12W4Cg,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
