import 'package:flutter/material.dart';
import 'package:janatar_barta/navigation_manu.dart';
import 'package:janatar_barta/utils/theme/theme.dart';
import 'features/personalization/screens/home_screen/home_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      home: NavigationManu(),
    );
  }
}
