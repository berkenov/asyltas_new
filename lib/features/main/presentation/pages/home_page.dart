import 'package:asyltas_app/features/main/presentation/pages/home_mobile.dart';
import 'package:asyltas_app/responsive/responsive.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      desktopLayout: HomeMobile(),
      mobileLayout: HomeMobile(),
    );
  }
}
