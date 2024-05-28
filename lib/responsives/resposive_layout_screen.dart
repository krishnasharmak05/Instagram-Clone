import 'package:flutter/material.dart';
import 'package:insta/utils/dimensions.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget webScreenLayout;
  final Widget mobileScreenLayout;
  const ResponsiveLayout(
      {super.key,
      required this.mobileScreenLayout,
      required this.webScreenLayout});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > webScreenSize &&
            constraints.maxHeight > webScreenSize) {
          // Added the height part to prevent mobile screen from changing to webScreen when rotated to Landscape mode.
          // We can't do anything about the case where the height of the web screen is smaller than webScreenSize :sad:z  .
          return webScreenLayout;
        } else {
          return mobileScreenLayout;
        }
      },
    );
  }
}
