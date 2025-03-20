import 'package:flutter/material.dart';
import 'package:flutter_widgets/config/theme/app_theme.dart';
import 'package:flutter_widgets/screens/buttons/buttons_screen.dart';
import 'package:flutter_widgets/screens/cards/cards_screen.dart';
import 'package:flutter_widgets/screens/home/home_screen.dart';

class WidgetApp extends StatelessWidget {
  const WidgetApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppTheme(selectedColor: 3).getTheme(),
      home: const HomeScreen(),
      routes: {
        '/buttons': (context) => const ButtonsScreen(),
        '/cards': (context) => const CardsScreen(),
      },
    );
  }
}
