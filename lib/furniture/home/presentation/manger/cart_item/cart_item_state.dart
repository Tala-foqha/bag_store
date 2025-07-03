// furniture/home/presentation/manger/cart_item/cart_item_state.dart
part of 'cart_item_cubit.dart';

@immutable
abstract class CartItemState {}

class CartItemInitial extends CartItemState {}
class CartItemUpdated extends CartItemState {
  final CartItemEntity cartItemEntity;

  CartItemUpdated({required this.cartItemEntity});

}



