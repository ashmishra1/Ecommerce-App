part of 'wishlist_bloc.dart';

abstract class WishlistEvent extends Equatable {
  const WishlistEvent();

  @override
  List<Object> get props => [];
}

class StartWishlist extends WishlistEvent {}

class AddtWishlistProduct extends WishlistEvent {
  final Product product;

  const AddtWishlistProduct(this.product);

  @override
  List<Object> get props => [product];
}

class RemoveWishListProduct extends WishlistEvent {
  final Product product;

  const RemoveWishListProduct(this.product);

  @override
  List<Object> get props => [product];
}
