import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:insta/responsives/mobile_screen_layout.dart';
import 'package:insta/responsives/resposive_layout_screen.dart';
import 'package:insta/responsives/web_screen_layout.dart';
import 'package:insta/utils/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final String _userName =
      "NoUsername"; // TODO: I am supposed to get the username from Firebase
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Instagram",
      theme: ThemeData.dark()
          .copyWith(scaffoldBackgroundColor: mobileBackgroundColor),
      home: const ResponsiveLayout(mobileScreenLayout: MobileScreenLayout(), webScreenLayout: WebScreenLayout(),),);
  }
}
