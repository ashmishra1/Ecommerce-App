import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/blocs/wishlist/wishlist_bloc.dart';
import 'package:shop/models/models.dart';
import 'package:shop/widgets/custom_appbar.dart';
import 'package:shop/widgets/custom_navbar.dart';
import 'package:shop/widgets/widgets.dart';

class ProductScreen extends StatelessWidget {
  final Product product;
  const ProductScreen({Key? key, required this.product}) : super(key: key);

  static const String routeName = '/product';

  static Route route({required Product product}) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => ProductScreen(
        product: product,
      ),
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
    return Scaffold(
        appBar: CustomAppBar(title: product.name),
        bottomNavigationBar: BottomAppBar(
          color: Colors.white,
          elevation: 0.0,
          child: Container(
            height: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.share,
                      color: Colors.black,
                    )),
                BlocBuilder<WishlistBloc, WishlistState>(
                  builder: (context, state) {
                    return IconButton(
                      icon: Icon(
                        Icons.favorite,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        context
                            .read<WishlistBloc>()
                            .add(AddtWishlistProduct(product));

                        final snackbar =
                            SnackBar(content: Text('Added to your Wishlist'));
                        ScaffoldMessenger.of(context).showSnackBar(snackbar);
                      },
                    );
                  },
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.black),
                    onPressed: () {},
                    child: Text(
                      'ADD TO CART',
                      style: Theme.of(context).textTheme.headline5!.copyWith(
                            color: Colors.white,
                          ),
                    ))
              ],
            ),
          ),
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 12.0, right: 12.0),
              child: HeroCarouselCard(
                product: product,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width - 10,
                    height: 70,
                    alignment: Alignment.bottomCenter,
                    color: Colors.black.withAlpha(50),
                  ),
                  Container(
                    margin: const EdgeInsets.all(5.0),
                    width: MediaQuery.of(context).size.width - 10,
                    height: 60,
                    alignment: Alignment.center,
                    color: Colors.black,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            product.name,
                            style: Theme.of(context)
                                .textTheme
                                .headline5!
                                .copyWith(color: Colors.white),
                          ),
                          Text(
                            "Rs." + product.price,
                            style: Theme.of(context)
                                .textTheme
                                .headline5!
                                .copyWith(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: ExpansionTile(
                title: Text(
                  'Product Information',
                  style: Theme.of(context).textTheme.headline3,
                ),
                initiallyExpanded: true,
                children: [
                  ListTile(
                    title: Text(
                      'Many of our beverages contain sugar, which has kilojoules. While sugar is fine in moderation, too much of it isn\'t good for anyone. Consuming too many kilojoules, including soft drinks with sugar, can contribute to weight gain.',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: ExpansionTile(
                title: Text(
                  'Delivery Information',
                  style: Theme.of(context).textTheme.headline3,
                ),
                initiallyExpanded: true,
                children: [
                  ListTile(
                    title: Text(
                      'Many of our beverages contain sugar, which has kilojoules. While sugar is fine in moderation, too much of it isn\'t good for anyone. Consuming too many kilojoules, including soft drinks with sugar, can contribute to weight gain.',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
