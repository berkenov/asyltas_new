import 'package:asyltas_app/features/favorites/presentation/pages/favorites_mobile.dart';
import 'package:asyltas_app/responsive/responsive.dart';
import 'package:flutter/cupertino.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({
    super.key,
    required this.fromMain,
  });
  final bool fromMain;
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      desktopLayout: FavoritesMobile(
        fromMain: fromMain,
      ),
      mobileLayout: FavoritesMobile(
        fromMain: fromMain,
      ),
    );
  }
}
