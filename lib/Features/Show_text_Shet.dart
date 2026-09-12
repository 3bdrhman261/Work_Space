import 'package:flutter/material.dart';
import 'package:workspace_app/core/shared/text_form.dart';
//import 'package:workspace_app/core/style/utils/utils.dart';

Future<void> showTaskSheet(BuildContext context) {
  return showModalBottomSheet(
    context: context,
    builder: (context) => Padding(
      padding: .symmetric(horizontal: 8),
      child: Column(
        mainAxisSize: .min,
        children: [
          Container(alignment: .topEnd, child: CloseButton()),
          TextForms(),
        ],
      ),
    ),
  );
}
