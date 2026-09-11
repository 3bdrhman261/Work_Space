import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:workspace_app/core/navigation/App_routes.dart';
import 'package:workspace_app/core/style/color_maingar.dart';

class WorkspaceApp extends StatelessWidget {
  const WorkspaceApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: ColorMaingar.wiet,
        statusBarIconBrightness: .dark,
      ),
    );
    return SafeArea(
      child: MaterialApp.router(
        title: 'WorkSpace',
        debugShowCheckedModeBanner: false,
        routerConfig: AppRoutes.approutrs,
      ),
    );
  }
}
