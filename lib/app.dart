import 'package:flutter/material.dart';
import 'package:spotsapp/utils/app_colors.dart';

import 'pages/landinhg_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sports App',
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: AppColors.black,
      ),
      home: const LandingPage(),
    );
  }
}
