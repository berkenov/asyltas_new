import 'package:asyltas_app/responsive/dimentions.dart';
import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileLayout;
  final Widget desktopLayout;
  const ResponsiveLayout({
    super.key,
    required this.desktopLayout,
    required this.mobileLayout,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxHeight <= mobileWidth) {
          return mobileLayout;
        } else {
          return desktopLayout;
        }
      },
    );
  }
}
