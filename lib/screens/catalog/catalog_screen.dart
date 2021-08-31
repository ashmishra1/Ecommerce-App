import 'package:flutter/material.dart';
import 'package:shop/models/category_model.dart';
import 'package:shop/models/models.dart';
import 'package:shop/widgets/custom_appbar.dart';
import 'package:shop/widgets/custom_navbar.dart';
import 'package:shop/widgets/widgets.dart';

class CatalogScreen extends StatelessWidget {
  final Category category;
  const CatalogScreen({Key? key, required this.category}) : super(key: key);

  static const String routeName = '/catalog';

  static Route route({required Category category}) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) =>
          CatalogScreen(category: category),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(1.0, 0.0);
        const end = Offset.zero;
        final tween = Tween(begin: begin, end: end);
        final offsetAnimation = animation.drive(tween);
        return SlideTransition(
          position: offsetAnimation,
          child: child,
        );
      },
      settings: RouteSettings(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final List<Product> categoryProduct = Product.products
        .where((product) => product.category == category.name)
        .toList();
    return Scaffold(
      appBar: CustomAppBar(title: category.name),
      bottomNavigationBar: CustomNavBar(),
      body: GridView.builder(
        padding: EdgeInsets.symmetric(
          horizontal: 8.0,
          vertical: 16.0,
        ),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 1.16),
        itemBuilder: (BuildContext context, int index) {
          return Center(
            child: ProductCard(
              widthFactor: 2.3,
              product: categoryProduct[index],
            ),
          );
        },
        itemCount: categoryProduct.length,
      ),
    );
  }
}
