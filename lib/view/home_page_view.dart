import 'package:flutter/material.dart';
import 'package:sampark_web/config/responsive_layout.dart';
import 'package:sampark_web/pages/mobile_home_page.dart';
import 'package:sampark_web/pages/web_home_page.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(mobile: MobileHomePage(), web: WebHomePage());
  }
}