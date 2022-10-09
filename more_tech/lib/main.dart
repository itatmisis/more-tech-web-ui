import 'package:flutter/material.dart';
import 'package:more_tech/presentation/screens/activity_panel.dart';

import 'presentation/screens/main_screen.dart';
import 'presentation/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightTheme,
      home:  Scaffold(
        body: MainScreen(),
      ),
    );
  }
}

