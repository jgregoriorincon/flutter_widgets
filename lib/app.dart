import 'package:flutter/material.dart';
import 'package:flutter_widgets/config/router/app_router.dart';
import 'package:flutter_widgets/config/theme/app_theme.dart';

class WidgetApp extends StatelessWidget {
  const WidgetApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter,
      title: 'Flutter Demo',
      theme: AppTheme(selectedColor: 8).getTheme(),
    );
  }
}
