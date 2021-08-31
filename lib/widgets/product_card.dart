import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/blocs/wishlist/wishlist_bloc.dart';
import 'package:shop/models/models.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  final double widthFactor;
  final bool isWishList;
  const ProductCard({
    Key? key,
    required this.product,
    this.widthFactor = 2.5,
    this.isWishList = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/product', arguments: product);
      },
      child: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width / widthFactor,
            height: 150,
            child: Image.network(
              product.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 80,
            child: Container(
                width: MediaQuery.of(context).size.width / widthFactor,
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.black.withAlpha(120),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              product.name,
                              style: Theme.of(context)
                                  .textTheme
                                  .headline4!
                                  .copyWith(
                                    color: Colors.white,
                                  ),
                            ),
                            Text(
                              'Rs.' + product.price,
                              style: Theme.of(context)
                                  .textTheme
                                  .headline4!
                                  .copyWith(
                                    color: Colors.white,
                                  ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                          child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.add_circle,
                                color: Colors.white,
                              ))),
                      isWishList
                          ? Expanded(
                              child: BlocBuilder<WishlistBloc, WishlistState>(
                              builder: (context, state) {
                                return IconButton(
                                    onPressed: () {
                                      context
                                          .read<WishlistBloc>()
                                          .add(RemoveWishListProduct(product));

                                      final snackbar = SnackBar(
                                          content: Text(
                                              'Product removed from your Wishlist'));
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(snackbar);
                                    },
                                    icon: Icon(
                                      Icons.delete,
                                      color: Colors.white,
                                    ));
                              },
                            ))
                          : SizedBox(),
                    ],
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
