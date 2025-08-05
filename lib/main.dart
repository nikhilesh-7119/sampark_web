import 'package:flutter/material.dart';
import 'package:sampark_web/config/themes.dart';
import 'package:sampark_web/view/home_page_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sampark Web',
      theme: darkTheme,
      themeMode: ThemeMode.dark,
      home: const HomePageView(),
    );
  }
}
