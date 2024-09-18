import 'package:asyltas_app/features/menu/presentation/pages/menu_mobile.dart';
import 'package:asyltas_app/responsive/responsive.dart';
import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({
    super.key,
    required this.fromMain,
  });
  final bool fromMain;
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      desktopLayout: MenuMobile(
        fromMain: fromMain,
      ),
      mobileLayout: MenuMobile(
        fromMain: fromMain,
      ),
    );
  }
}
