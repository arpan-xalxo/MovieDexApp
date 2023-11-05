import 'package:ani_dex_app/constants/colors.dart';
import 'package:ani_dex_app/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AniDex',
      theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: Colours.scaffoldBgColor, useMaterial3: true),
      home: const HomeScreen(),
    );
  }
}
