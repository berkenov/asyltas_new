import 'package:asyltas_app/features/category/presentation/pages/category_mobile.dart';
import 'package:asyltas_app/responsive/responsive.dart';
import 'package:flutter/cupertino.dart';

class CategoryPgae extends StatelessWidget {
  const CategoryPgae({
    super.key,
    required this.categoryId,
    required this.categoryName,
  });

  final String categoryName;
  final String categoryId;
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      desktopLayout: CategoryMobile(
        categoryId: categoryId,
        categoryName: categoryName,
      ),
      mobileLayout: CategoryMobile(
        categoryId: categoryId,
        categoryName: categoryName,
      ),
    );
  }
}
