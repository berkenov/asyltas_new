import 'package:asyltas_app/features/cart/presentation/pages/cart_mobile.dart';
import 'package:asyltas_app/responsive/responsive.dart';
import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      desktopLayout: CartMobile(),
      mobileLayout: CartMobile(),
    );
  }
}
