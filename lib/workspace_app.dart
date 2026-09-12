import 'package:flutter/material.dart';
import 'package:workspace_app/core/navigation/App_routes.dart';

class WorkspaceApp extends StatelessWidget {
  const WorkspaceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'WorkSpace',
      debugShowCheckedModeBanner: false,
      routerConfig: AppRoutes.approutrs,
    );
  }
}
