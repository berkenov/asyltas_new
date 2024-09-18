import 'package:asyltas_app/features/catalog/presentation/pages/catalog_mobile.dart';
import 'package:asyltas_app/responsive/responsive.dart';
import 'package:flutter/material.dart';

class CatalogPage extends StatelessWidget {
  const CatalogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      desktopLayout: CatalogMobile(),
      mobileLayout: CatalogMobile(),
    );
  }
}
